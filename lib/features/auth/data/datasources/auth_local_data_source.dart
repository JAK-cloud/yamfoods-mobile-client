
import '../../domain/entities/auth_token.dart';
import '../../domain/entities/user.dart';

abstract class AuthLocalDataSource {
  Future<void> saveTokens(AuthToken tokens);
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> clearTokens();
  Future<User?> getUser();
  Future<void> saveUser(User user);
  Future<void> clearUser();
}
