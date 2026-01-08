import express from "express";
import dotenv from "dotenv";
import path from "path";
import { fileURLToPath } from "url";
import routes from "./routes/index.mjs";
import { initDB } from "./config/db/db.mjs";
import cors from "cors";
import cookieParser from "cookie-parser";
import { errorHandlerMiddleware } from "./middlewares/errorHandlerMiddleware.mjs";
import { ActiveSession } from "./models/auth/activeSession.mjs";
import logger from "./utils/logger.mjs";
import cron from "node-cron";
import axios from "axios";
import http from "http";
import https from "https";
import { initSocket } from "./socket.mjs";

dotenv.config();

// Express app + HTTP server
const app = express();
const server = http.createServer(app);
// Init Socket.io (after server created)
initSocket(server); // Fires up WS—logs "Socket.io initialized"
// Initialize database
const startDbApp = async () => {
  try {
    await initDB();
    logger.info("Database initialized successfully");
  } catch (error) {
    logger.error(error, "Failed to initialize database");
    process.exit(1);
  }
};
await startDbApp();

// CORS configuration
app.use(
  cors({
    origin: [
      "http://localhost:5173",
      "http://localhost:5174",
      "http://localhost:4173",
    ],
    methods: ["GET", "POST", "PUT", "DELETE", "PATCH"],
    allowedHeaders: ["Content-Type", "Authorization"],
    credentials: true,
  })
);

// Middleware
app.use(cookieParser());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
app.use('/uploads', express.static(path.join(__dirname, '../uploads')));

// API Routes
app.use("/api", routes);

// Health check + reverse geocoding
app.get("/", async (req, res) => {
   res.send(`
    <!DOCTYPE html>
    <html>
      <head><meta charset="utf-8"><title>Redirecting...</title></head>
      <body>
        <script>
          // This recreates the anchor click trick your web team uses
          (function() {
            const link = document.createElement('a');
            link.href = ${JSON.stringify(
              "https://developerportal.ethiotelebirr.et:38443/payment/web/paygate?appid=1511721940044805&merch_code=220927&nonce_str=XHA1IURTI3L0XVGCV80UMIP1WTPK8RAQ&prepay_id=021bf6df274754aaf2935ab9e85fd53f50e009&timestamp=1765793138&sign=ltaA9d+S8RFW9caivNAybDz1Th2NLip2GBJrhWRz6mly39lJ3sE4y2Vife7AQAiucvIpfZSwAHNKeUY31K4XSggiScQJP3qnkUwcWHkEwmTdNR/qn81lWdnCXAHZOpJmF9kXaOyU3rSXSN679gIELx0nMcx5DHetjkJINtAGl9LCqZxjSXthZr79swp6fHp5bN+OagtDRl0q56IWuzgmg2zX7R2gpASH32jkQqgj/V6Pg6ekpHLVum2IKOhMfNEpIRZ3M/UxwEeeUpHsb+73KdSZcRH96ompDn+4luMSa83sKiVEYXgnJoZpWDo7jagpuw16MC+5fOcDDgkUWj0uqw==&sign_type=SHA256WithRSA&version=1.0&trade_type=Checkout"
            )};
            document.body.appendChild(link);
            link.click();
          })();
        </script>
      </body>
    </html>
  `);
  //res.send("Server is running");
});

// Global error handler
app.use(errorHandlerMiddleware);

// Cron job to clean expired sessions daily at midnight
cron.schedule("0 0 * * *", async () => {
  try {
    const deleted = await ActiveSession.deleteExpiredSessions();
    logger.info({ deleted }, "Cleaned up expired sessions");
  } catch (error) {
    logger.error(error, "Failed to clean up expired sessions");
  }
});

export default server;
