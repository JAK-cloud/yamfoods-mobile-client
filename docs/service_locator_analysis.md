# Service Locator & Interceptors Analysis

## Overview

This document analyzes the junior dev's implementation of service locator (GetIt) and interceptors, identifying issues and proposing solutions following industry best practices.

---

## 🔴 Critical Issues

### 1. **Service Locator Pattern (GetIt)**

**Current State:** Using GetIt for dependency injection
**Issue:** We're migrating to **Riverpod Generator 3.0.3**, so GetIt is incompatible
**Impact:** HIGH - Complete rewrite needed

### 2. **Service Locator Anti-Pattern in Interceptors**

**Current State:**

```dart
final Logger _logger = GetIt.instance<Logger>();
final dio = GetIt.instance<Dio>();
```

**Issue:** Direct service locator access violates dependency injection principles
**Impact:** HIGH - Makes testing difficult, creates hidden dependencies
**Best Practice:** Dependencies should be injected via constructor

### 3. **Incorrect Failure Constructor**

**Location:** `auth_interceptor.dart:109`

```dart
throw Failure.authError(ErrorModel(...)); // ❌ Doesn't exist
```

**Issue:** `Failure.authError()` doesn't exist in our codebase
**Correct:** `Failure.auth(message: 'No refresh token found')`
**Impact:** MEDIUM - Code won't compile

### 4. **Hardcoded Unprotected Endpoints**

**Location:** `auth_interceptor.dart:86-94`
**Issue:** Hardcoded strings instead of using `ApiRoutes` constants
**Impact:** MEDIUM - Maintenance nightmare, prone to typos

### 5. **Global Function for Token Validation**

**Location:** `token_validator.md`
**Issue:**

- Uses GetIt service locator
- Hardcoded expiry buffer
- Not injectable/testable
  **Impact:** MEDIUM - Not following DI principles

### 6. **Removed UseCase Still Referenced**

**Location:** `service_locator.md:189`

```dart
locator.registerLazySingleton<GetCurrentUserUsecase>(...); // ❌ Removed
```

**Issue:** `GetCurrentUserUsecase` was removed from codebase
**Impact:** MEDIUM - Code won't compile

### 7. **Hardcoded Base URL**

**Location:** `service_locator.md:60`

```dart
baseUrl: 'https://api.yamfoods.com/api', // Hardcoded
```

**Issue:** Should use environment variables from `.env` file
**Impact:** LOW - But not best practice

### 8. **Using `print()` Instead of Logger**

**Location:** `auth_interceptor.dart:30`

```dart
print('Request interceptor called for ${options.path}'); // ❌
```

**Issue:** Should use injected logger
**Impact:** LOW - But unprofessional

---

## ✅ What's Good

1. **Interceptor Order:** Correct order (Auth → Retry → Logging)
2. **Token Refresh Logic:** Good use of `Completer` to prevent concurrent refreshes
3. **Retry Logic:** Proper retry conditions (timeouts, 503)
4. **Dependency Order:** Correct initialization order in service locator
5. **Error Handling:** Good try-catch blocks in interceptors

---

## 📋 Migration Plan

### Phase 1: Create Core Infrastructure (Riverpod)

1. **Create Environment Config Provider**

   - Use `flutter_dotenv` to load `.env` file
   - Create `EnvConfig` class
   - Create Riverpod provider

2. **Create Core Providers**

   - `Logger` provider
   - `FlutterSecureStorage` provider
   - `SharedPreferences` provider (async)
   - `Dio` client provider

3. **Create Token Validator Service**
   - Convert to injectable class
   - Remove GetIt dependency
   - Make expiry buffer configurable

### Phase 2: Refactor Interceptors

1. **Auth Interceptor**

   - Remove GetIt dependencies
   - Inject dependencies via constructor
   - Use `ApiRoutes` for unprotected endpoints
   - Fix `Failure.authError()` → `Failure.auth()`
   - Replace `print()` with logger

2. **Retry Interceptor**

   - Remove GetIt dependency
   - Inject Logger via constructor

3. **Logging Interceptor**
   - Already good (no changes needed)

### Phase 3: Create Dio Client Provider

1. **Create `dio_client.dart`**
   - Configure Dio with interceptors
   - Use Riverpod providers for dependencies
   - Proper initialization order

### Phase 4: Remove GetIt

1. **Delete GetIt setup**
2. **Update all references**
3. **Test thoroughly**

---

## 🎯 Proposed File Structure

```
lib/core/
├── network/
│   ├── dio_client.dart              # NEW: Dio client with providers
│   ├── interceptors/
│   │   ├── auth_interceptor.dart    # REFACTOR: Remove GetIt
│   │   ├── retry_interceptor.dart   # REFACTOR: Remove GetIt
│   │   └── logging_interceptor.dart  # ✅ Already good
│   └── api/
│       └── api_routes.dart          # ✅ Already exists
├── services/
│   └── token_validator.dart         # NEW: Injectable service
├── constants/
│   └── env_config.dart              # NEW: Environment config
└── providers/
    └── core_providers.dart          # NEW: Core DI providers
```

---

## 📝 Code Examples

See `docs/service_locator_refactored_examples.md` for detailed code examples.

---

## ⚠️ Breaking Changes

1. **GetIt → Riverpod:** Complete migration required
2. **Token Validator:** Function → Class (API change)
3. **Interceptor Constructors:** Now require injected dependencies

---

## ✅ Success Criteria

- [ ] All GetIt references removed
- [ ] All dependencies injected via constructor
- [ ] Environment variables loaded from `.env`
- [ ] Token validator is injectable and testable
- [ ] Interceptors use `ApiRoutes` constants
- [ ] All code compiles without errors
- [ ] Tests pass (when written)
