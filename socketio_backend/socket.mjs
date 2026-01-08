import { Server } from "socket.io";
import logger from "./utils/logger.mjs";
import { wsAuthMiddleware } from "./middlewares/wsAuthMiddleware.mjs"; // Your auth mid
import { emitSuccess, emitError, broadcastSuccess } from "./utils/socketResponse.mjs";

let io; // Singleton io instance

export const initSocket = (server) => {
  if (io) {
    logger.warn("Socket.io already initialized—skipping");
    return io;
  }

  // Create io attached to HTTP server
  io = new Server(server, {
    cors: {
      origin: [
        "http://localhost:5173",
        "http://localhost:5174",
        "http://localhost:4173",
        // Add Flutter: "http://10.0.2.2:8080" for Android emu, "capacitor://localhost" for iOS
      ],
      methods: ["GET", "POST", "PUT", "DELETE", "PATCH"],
      credentials: true,
    },
    // 2025 tweak: Enable ping timeouts for mobile battery (30s idle disconnect)
    pingInterval: 25000,
    pingTimeout: 30000,
    // Fallback transports (polling if WS blocked, e.g., corp firewalls)
    transports: ["websocket", "polling"],
  });

  // Mount auth middleware (runs on every connect/reconn)
  io.use(wsAuthMiddleware);

  // Connection handler
  io.on("connection", (socket) => {
    logger.info(`New WS connection: ${socket.id}`);

    // Explicit auth check (mid failed? Bail)
    if (!socket.user) {
      logger.error("Unauthorized connection slipped through");
      return socket.disconnect(true);
    }

    const user = socket.user;
    socket.emit("connect:authenticated", {
      userId: user.id,
      role: user.role,
    });

    // Role-based rooms (expand later: customer joins `user_${id}` too)
    if (user.role === "deliverer") {
      socket.join(`user_${user.id}`);
      logger.info(`Deliverer ${user.id} joined user room`);
    }
    // Future: if (user.role === "customer") { socket.join(`user_${user.id}`); }

    // --- Real-time Tracking Events ---

    // 1. Customer/Admin joins tracking room
    socket.on("join_tracking", async ({ orderId }) => {
      logger.info(`Received join_tracking request for order: ${orderId}`); // DEBUG LOG
      try {
        if (!orderId) {
             logger.warn("join_tracking failed: No orderId provided");
             return;
        }

        // Dynamic import to avoid circular dependency issues if any
        logger.info("Importing Order model..."); // DEBUG LOG
        const { Order } = await import("./models/order/order.mjs");
        
        logger.info(`Fetching order ${orderId}...`); // DEBUG LOG
        const order = await Order.getOrder(orderId);

        if (!order) {
          logger.warn(`Order ${orderId} not found`);
          return emitError(socket, "error", { message: "Order not found" });
        }

        // Security: Only Owner or Admin can track
        const isOwner = order.userId === user.id;
        const isAdmin = user.role === "admin";
        
        logger.info(`Security check: User ${user.id}, Owner ${order.userId}, Role ${user.role}`); // DEBUG LOG

        if (!isOwner && !isAdmin) {
          logger.warn(`User ${user.id} tried to track unauthorized order ${orderId}`);
          return emitError(socket, "error", { message: "Unauthorized to track this order" });
        }

        const roomName = `tracking_order_${orderId}`;
        socket.join(roomName);
        
        emitSuccess(socket, "tracking_joined", { 
          message: `Joined tracking for order ${orderId}` 
        });
        
        logger.info(`User ${user.id} joined tracking room: ${roomName}`);

      } catch (error) {
        logger.error(error, "Error joining tracking room");
        emitError(socket, "error", { message: "Internal server error" });
      }
    });

    // 2. Driver sends location update
    socket.on("update_location", ({ orderId, lat, lng, heading }) => {
      // Only deliverers can update location
      if (user.role !== "deliverer") {
        return; 
      }

      // (Optional: You could verify if this driver is actually assigned to this order 
      // via DB, but for high-frequency updates, we often skip DB hits for speed 
      // if we trust the driver role. For strict security, check DB.)

      const roomName = `tracking_order_${orderId}`;
      
      // Use helper to broadcast (passing socket uses socket.to() which excludes sender)
      broadcastSuccess(socket, roomName, "driver_location_updated", { 
        orderId, 
        lat, 
        lng, 
        heading 
      });
    });

    socket.on("disconnect", () => {
      logger.info(`WS disconnected: ${socket.id}`);
      // Future: Cleanup—e.g., if mid-delivery, flag offline in DB
    });
  });

  logger.info("Socket.io initialized and listening");
  return io;
};

export { io }; // For dynamic imports in services (e.g., post-DB emits)