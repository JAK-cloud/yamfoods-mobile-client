import jwt from "jsonwebtoken";
import { User } from "../models/auth/user.mjs";
import { ActiveSession } from "../models/auth/activeSession.mjs";
import { token } from "../utils/token.mjs";
import logger from "../utils/logger.mjs";
import { ERROR_CODES } from "../utils/errors/errorCodes.mjs";

export const wsAuthMiddleware = async (socket, next) => {
  try {
    // Extract token: Prioritize auth object (best practice), then query, then header
    let tokenValue = socket.handshake.auth?.token; // Client: { auth: { token: jwt } }

    if (!tokenValue) {
      tokenValue = socket.handshake.query?.token; // Fallback: ?token=jwt
    }

    if (!tokenValue && socket.handshake.headers?.authorization) {
      const authHeader = socket.handshake.headers.authorization;
      if (!authHeader.startsWith("Bearer ")) {
        throw new Error("Invalid token format");
      }
      tokenValue = authHeader.split(" ")[1]; // Bearer compat for polling
    }

    if (!tokenValue) {
      const err = new Error("No token provided");
      err.data = { code: ERROR_CODES.UNAUTHORIZED };
      throw err;
    }

    // Verify JWT (exact from your middleware)
    let decoded;
    try {
      decoded = jwt.verify(tokenValue, token.JWT_SECRET);
    } catch (err) {
        const e = new Error("Invalid or expired token");
        e.data = { code: ERROR_CODES.TOKEN_EXPIRED };
        throw e;
    }

    // Async DB checks (now properly awaited)
    const user = await User.findByUserId(decoded.userId);
    if (!user) {
      const err = new Error("User not found");
      err.data = { code: ERROR_CODES.USER_NOT_FOUND };
      throw err;
    }

    const session = await ActiveSession.findByUserId(decoded.userId);
    if (!session) {
      const err = new Error("No active session found");
      err.code = ERROR_CODES.UNAUTHORIZED;
      throw err;
    }

    if (!user.phoneVerified) {
      const err = new Error("Phone number not verified");
      err.data = { code: ERROR_CODES.FORBIDDEN };
      throw err;
    }

    // Attach to socket (accessible in connection handler)
    socket.user = {
      id: user.id,
      role: user.role,
      email: user.email,
      phone: user.phone,
      phoneVerified: user.phoneVerified,
    };

    next(); // Success—proceed to connection
  } catch (err) {
    logger.error(err, "WS Auth failed");
    next(err); // Rejects: Client gets connect_error with err.message + err.code
  }
};