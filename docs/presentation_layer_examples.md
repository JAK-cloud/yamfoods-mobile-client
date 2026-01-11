# Presentation Layer Code Examples - Riverpod Generator 3.0.3

## Example 1: Dependency Injection Providers

### File: `lib/features/auth/presentation/providers/auth_providers.dart`

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/auth_api_service.dart';
import '../../data/datasources/auth_local_data_source.dart';
import '../../data/datasources/auth_local_data_source_impl.dart';
import '../../data/datasources/auth_remote_data_source.dart';
import '../../data/datasources/auth_remote_data_source_impl.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/register_usecase.dart';
import '../../domain/usecases/logout_usecase.dart';
import '../../domain/usecases/refresh_tokens_usecase.dart';
import '../../domain/usecases/save_phone_number_usecase.dart';
import '../../domain/usecases/verify_phone_usecase.dart';
import '../../domain/usecases/validate_otp_usecase.dart';
import '../../domain/usecases/request_reset_password_otp_usecase.dart';
import '../../domain/usecases/reset_password_usecase.dart';
// TODO: Create dio_client.dart with dioClientProvider
// import '../../../../core/network/dio_client.dart';

part 'auth_providers.g.dart';

// ==================== Data Sources ====================

@riverpod
AuthApiService authApiService(AuthApiServiceRef ref) {
  // TODO: Replace with actual Dio client provider
  // final dio = ref.watch(dioClientProvider);
  // return AuthApiService(dio);
  throw UnimplementedError('Create dioClientProvider first');
}

@riverpod
AuthRemoteDataSource authRemoteDataSource(AuthRemoteDataSourceRef ref) {
  final apiService = ref.watch(authApiServiceProvider);
  return AuthRemoteDataSourceImpl(apiService);
}

@riverpod
AuthLocalDataSource authLocalDataSource(AuthLocalDataSourceRef ref) {
  // These should be provided at app level, but for example:
  // final storage = ref.watch(secureStorageProvider);
  // final prefs = ref.watch(sharedPreferencesProvider);
  // return AuthLocalDataSourceImpl(storage, prefs);
  throw UnimplementedError('Provide FlutterSecureStorage and SharedPreferences');
}

// ==================== Repository ====================

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final remoteDataSource = ref.watch(authRemoteDataSourceProvider);
  final localDataSource = ref.watch(authLocalDataSourceProvider);
  return AuthRepositoryImpl(remoteDataSource, localDataSource);
}

// ==================== UseCases ====================

@riverpod
LoginUsecase loginUsecase(LoginUsecaseRef ref) {
  final repository = ref.watch(authRepositoryProvider);
  return LoginUsecase(repository);
}

@riverpod
RegisterUsecase registerUsecase(RegisterUsecaseRef ref) {
  final repository = ref.watch(authRepositoryProvider);
  return RegisterUsecase(repository);
}

@riverpod
LogoutUsecase logoutUsecase(LogoutUsecaseRef ref) {
  final repository = ref.watch(authRepositoryProvider);
  return LogoutUsecase(repository);
}

@riverpod
RefreshTokensUsecase refreshTokensUsecase(RefreshTokensUsecaseRef ref) {
  final repository = ref.watch(authRepositoryProvider);
  return RefreshTokensUsecase(repository);
}

@riverpod
SavePhoneNumberUsecase savePhoneNumberUsecase(SavePhoneNumberUsecaseRef ref) {
  final repository = ref.watch(authRepositoryProvider);
  return SavePhoneNumberUsecase(repository);
}

@riverpod
VerifyPhoneUsecase verifyPhoneUsecase(VerifyPhoneUsecaseRef ref) {
  final repository = ref.watch(authRepositoryProvider);
  return VerifyPhoneUsecase(repository);
}

@riverpod
ValidateOtpUsecase validateOtpUsecase(ValidateOtpUsecaseRef ref) {
  final repository = ref.watch(authRepositoryProvider);
  return ValidateOtpUsecase(repository);
}

@riverpod
RequestResetPasswordOtpUsecase requestResetPasswordOtpUsecase(
  RequestResetPasswordOtpUsecaseRef ref,
) {
  final repository = ref.watch(authRepositoryProvider);
  return RequestResetPasswordOtpUsecase(repository);
}

@riverpod
ResetPasswordUsecase resetPasswordUsecase(ResetPasswordUsecaseRef ref) {
  final repository = ref.watch(authRepositoryProvider);
  return ResetPasswordUsecase(repository);
}
```

## Example 2: State Classes

### File: `lib/features/auth/presentation/states/auth_state.dart`

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/auth_token.dart';
import '../../domain/entities/user.dart';

part 'auth_state.freezed.dart';

// ==================== Login State ====================

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginInitial;
  const factory LoginState.loading() = _LoginLoading;
  const factory LoginState.success({
    required User user,
    required AuthToken tokens,
  }) = _LoginSuccess;
  const factory LoginState.failure(String message) = _LoginFailure;
}

// ==================== Register State ====================

@freezed
sealed class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _RegisterInitial;
  const factory RegisterState.loading() = _RegisterLoading;
  const factory RegisterState.success({required User user}) = _RegisterSuccess;
  const factory RegisterState.failure(String message) = _RegisterFailure;
}

// ==================== Logout State ====================

@freezed
sealed class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = _LogoutInitial;
  const factory LogoutState.loading() = _LogoutLoading;
  const factory LogoutState.success() = _LogoutSuccess;
  const factory LogoutState.failure(String message) = _LogoutFailure;
}

// ==================== Generic Async State ====================

/// Generic state for async operations that return Unit
@freezed
sealed class AsyncUnitState with _$AsyncUnitState {
  const factory AsyncUnitState.initial() = _AsyncUnitInitial;
  const factory AsyncUnitState.loading() = _AsyncUnitLoading;
  const factory AsyncUnitState.success() = _AsyncUnitSuccess;
  const factory AsyncUnitState.failure(String message) = _AsyncUnitFailure;
}

/// Generic state for async operations that return User
@freezed
sealed class AsyncUserState with _$AsyncUserState {
  const factory AsyncUserState.initial() = _AsyncUserInitial;
  const factory AsyncUserState.loading() = _AsyncUserLoading;
  const factory AsyncUserState.success({required User user}) = _AsyncUserSuccess;
  const factory AsyncUserState.failure(String message) = _AsyncUserFailure;
}
```

## Example 3: Login Notifier

### File: `lib/features/auth/presentation/providers/login_notifier.dart`

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/usecases/login_usecase.dart';
import '../states/auth_state.dart';

part 'login_notifier.g.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  LoginState build() => const LoginState.initial();

  Future<void> login({
    required String phone,
    required String password,
  }) async {
    state = const LoginState.loading();

    final usecase = ref.read(loginUsecaseProvider);
    final result = await usecase(
      phone: phone,
      password: password,
    );

    result.fold(
      (failure) {
        final message = failure.toUserMessage();
        state = LoginState.failure(message);
      },
      (data) {
        state = LoginState.success(
          user: data.user,
          tokens: data.tokens,
        );
      },
    );
  }

  void reset() {
    state = const LoginState.initial();
  }
}
```

## Example 4: Register Notifier

### File: `lib/features/auth/presentation/providers/register_notifier.dart`

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/usecases/register_usecase.dart';
import '../states/auth_state.dart';

part 'register_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() => const RegisterState.initial();

  Future<void> register({
    required String name,
    required String email,
    required String password,
    String role = 'user',
  }) async {
    state = const RegisterState.loading();

    final usecase = ref.read(registerUsecaseProvider);
    final result = await usecase(
      name: name,
      email: email,
      password: password,
      role: role,
    );

    result.fold(
      (failure) {
        final message = failure.toUserMessage();
        state = RegisterState.failure(message);
      },
      (user) {
        state = RegisterState.success(user: user);
      },
    );
  }

  void reset() {
    state = const RegisterState.initial();
  }
}
```

## Example 5: Logout Notifier

### File: `lib/features/auth/presentation/providers/logout_notifier.dart`

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/usecases/logout_usecase.dart';
import '../states/auth_state.dart';

part 'logout_notifier.g.dart';

@riverpod
class LogoutNotifier extends _$LogoutNotifier {
  @override
  LogoutState build() => const LogoutState.initial();

  Future<void> logout() async {
    state = const LogoutState.loading();

    final usecase = ref.read(logoutUsecaseProvider);
    final result = await usecase();

    result.fold(
      (failure) {
        final message = failure.toUserMessage();
        state = LogoutState.failure(message);
      },
      (_) {
        state = const LogoutState.success();
      },
    );
  }

  void reset() {
    state = const LogoutState.initial();
  }
}
```

## Example 6: Login Screen

### File: `lib/features/auth/presentation/screens/login_screen.dart`

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/login_notifier.dart';
import '../states/auth_state.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      await ref.read(loginNotifierProvider.notifier).login(
            phone: _phoneController.text.trim(),
            password: _passwordController.text,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginNotifierProvider);

    // Handle state changes
    loginState.when(
      initial: () {},
      loading: () {},
      success: (user, tokens) {
        // Navigate to home or show success
        WidgetsBinding.instance.addPostFrameCallback((_) {
          // Navigate to home screen
          // context.go('/home');
        });
      },
      failure: (message) {
        // Show error message
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          );
        });
      },
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _phoneController,
                  decoration: const InputDecoration(
                    labelText: 'Phone',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: loginState is _LoginLoading ? null : _handleLogin,
                    child: loginState is _LoginLoading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

## Example 7: Using AsyncNotifier (Alternative Pattern)

### File: `lib/features/auth/presentation/providers/login_async_notifier.dart`

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/entities/auth_token.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/login_usecase.dart';

part 'login_async_notifier.g.dart';

@riverpod
class LoginAsyncNotifier extends _$LoginAsyncNotifier {
  @override
  Future<({User user, AuthToken tokens})?> build() async {
    return null; // Initial state
  }

  Future<void> login({
    required String phone,
    required String password,
  }) async {
    state = const AsyncValue.loading();

    final usecase = ref.read(loginUsecaseProvider);
    final result = await usecase(
      phone: phone,
      password: password,
    );

    result.fold(
      (failure) {
        final message = failure.toUserMessage();
        state = AsyncValue.error(message, StackTrace.current);
      },
      (data) {
        state = AsyncValue.data(data);
      },
    );
  }
}
```

## Example 8: App-Level Provider Setup

### File: `lib/app/app.dart` (Updated)

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router/app_router.dart';

/// Root widget of the application.
class YamFoodsApp extends StatelessWidget {
  const YamFoodsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
      ),
    );
  }
}
```

## Key Patterns Summary

### 1. **Dependency Injection Pattern**

```dart
@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final remoteDataSource = ref.watch(authRemoteDataSourceProvider);
  final localDataSource = ref.watch(authLocalDataSourceProvider);
  return AuthRepositoryImpl(remoteDataSource, localDataSource);
}
```

### 2. **State Management Pattern (Notifier)**

```dart
@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  LoginState build() => const LoginState.initial();

  Future<void> login(...) async {
    state = const LoginState.loading();
    // ... handle result
  }
}
```

### 3. **State Management Pattern (AsyncNotifier)**

```dart
@riverpod
class LoginAsyncNotifier extends _$LoginAsyncNotifier {
  @override
  Future<Data?> build() async => null;

  Future<void> login(...) async {
    state = const AsyncValue.loading();
    // ... handle result
  }
}
```

### 4. **Error Handling Pattern**

```dart
result.fold(
  (failure) {
    final message = failure.toUserMessage();
    state = State.failure(message);
  },
  (data) {
    state = State.success(data);
  },
);
```

### 5. **Widget Consumption Pattern**

```dart
final state = ref.watch(loginNotifierProvider);
state.when(
  initial: () => Widget(),
  loading: () => LoadingWidget(),
  success: (data) => SuccessWidget(data),
  failure: (message) => ErrorWidget(message),
);
```

## Best Practices Checklist

- ✅ Use `@riverpod` for all dependency injection
- ✅ Use `@notifier` for stateful UI logic with methods
- ✅ Use `@asyncNotifier` for async operations (alternative to notifier)
- ✅ Create Freezed state classes for type-safe state management
- ✅ Always handle `Either<Failure, T>` from usecases
- ✅ Use `failure.toUserMessage()` extension for user-friendly error messages
- ✅ Use `ref.watch()` for reactive data
- ✅ Use `ref.read()` for one-time reads or method calls
- ✅ Wrap app with `ProviderScope`
- ✅ Generate code with `dart run build_runner build --delete-conflicting-outputs`
