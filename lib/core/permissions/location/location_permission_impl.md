# Location Permission Implementation Guide

## Two Completely Different Flows

1. **Location Permission** (App-level)

   - Required to use the app
   - Checked once after splash screen
   - If denied → app is blocked

2. **GPS / High Accuracy** (Screen-level)
   - Required only on specific screens that need it
   - Checked when user opens those screens
   - Does NOT block the entire app

These flows are separate and never overlap.

---

## PART A: APP-LEVEL LOCATION PERMISSION FLOW

This happens once, right after the splash screen.

### Step 1: App Launches

1. Show Splash Screen
2. Splash finishes
3. App checks location permission status

### Step 2: Permission Request Flow

```
IF location permission is already GRANTED
    → Enter the app normally (NO GPS check yet)
    → User can browse and use the app
ELSE
    → Request location permission (FIRST ATTEMPT - shows Android system dialog)
```

**System Permission Dialog Options:**

- **Precise or Approximate** (Android 12+)
- **While using the app**
- **Only this time**
- **Don't allow**

### Step 3: Handle First Permission Request Result

```
IF user taps "Allow" (While using the app)
    → Permission granted
    → Enter the app normally

IF user taps "Don't allow"
    → Permission denied (but NOT permanently)
    → Request permission again (SECOND ATTEMPT - gives user another chance)
    → This matches popular app behavior (ask twice before blocking)
```

### Step 4: Handle Second Permission Request Result

```
IF user taps "Allow" (on second attempt)
    → Permission granted
    → Enter the app normally

IF user taps "Don't allow" (on second attempt)
    → Permission denied again
    → Check if permanently denied

IF permission is PERMANENTLY DENIED
    → Android will no longer show system dialog
    → Go to Permission Block Flow
ELSE
    → Enter the app anyway (Android can ask again later)
```

### Step 5: Permission Block Flow (Only When Permanently Denied)

This is a **blocking dialog** that prevents app usage.

**When it appears:**

- User has denied permission multiple times
- Android marks permission as `permanentlyDenied` (deniedForever)
- OS will no longer show the permission dialog

**Dialog Content:**

- Message explaining why location is required
- Two buttons: **Exit** and **Settings**

**Behavior:**

- Dialog is modal (user cannot interact with app behind it)
- App functionality is blocked until resolved

#### Exit Button

```
Close the app completely
```

#### Settings Button

```
1. Open device app settings
2. Wait until user returns to app
3. When app resumes, re-check permission status
```

**Re-check Logic:**

```
IF permission is now GRANTED
    → Enter the app normally
ELSE
    → Show the blocking dialog again
```

**Important Notes:**

- Blocking dialog appears ONLY when permanently denied
- No retry loops with system permission popup
- OS already made the decision (permanently denied)
- Only way to change: user goes to Settings manually
- Keep showing blocking dialog until permission is granted

---

## PART B: SCREEN-LEVEL GPS (HIGH ACCURACY) FLOW

This applies **only to specific screens** that require GPS/high accuracy.

### Screens That Require GPS:

1. **Branch Selection Screen**

   - Needs GPS to sort branches by distance (nearest first)

2. **Order Tracking Screen**

   - Needs GPS to show user's location and delivery status

3. **Live Delivery Map Screen**
   - Needs GPS for real-time location tracking

### Step 1: User Opens a GPS-Required Screen

```
Screen starts loading
GPS Guard component runs
Check GPS/High Accuracy status
```

### Step 2: GPS Status Check

```
1. First verify location permission is granted (safety check)
2. Check if GPS (High Accuracy) is ENABLED

IF GPS is ENABLED
    → Allow screen to function normally
    → User can interact with screen
ELSE
    → Show rationale UI (explains why GPS is needed)
    → Request location (triggers Android "Location Accuracy" system dialog)
```

### Step 3: Handle System Accuracy Dialog

Android shows native dialog with options:

- **Turn on** (opens location settings)
- **No thanks** (dismisses dialog)

#### If User Taps "Turn on"

```
1. User is taken to location settings
2. User enables high accuracy
3. User returns to app
4. Re-check GPS status
```

```
IF GPS is now ENABLED
    → Allow screen to work normally
ELSE
    → Show system dialog again
```

#### If User Taps "No thanks" OR Dismisses Dialog

```
1. System dialog is dismissed
2. GPS Guard automatically re-checks GPS status after delay (1.5 seconds)
3. System dialog appears again (if GPS still disabled)
4. Do NOT allow screen to activate
5. Keep showing dialog until GPS is enabled
```

**Rationale UI Display:**

When GPS is disabled, the guard shows a custom rationale screen with:

- GPS icon
- "GPS Required" title
- Explanation message: "This screen requires high-accuracy location (GPS) to function properly. Please enable GPS when prompted."
- Loading indicator

**Why this behavior:**

- These screens literally cannot function without GPS
- User cannot proceed until GPS is enabled
- Rationale UI provides clear explanation before system dialog appears
- Annoying? Yes. Necessary? Yes.

### Back Button Behavior

**Important:** Back button does NOT bypass GPS requirement.

The GPS Guard uses `PopScope` with `canPop: false` to prevent back button navigation.

```
When user presses back button:
1. Back button is blocked (PopScope prevents navigation)
2. User remains on rationale screen
3. System dialog can still appear when location is requested
4. User cannot navigate away from screen until GPS is enabled
```

**User has two options:**

1. Enable GPS → Screen works
2. Close app completely (force close)

---

## Implementation Notes

### Why This Approach is Better

✅ **Users can browse without GPS** - Not forced to enable GPS just to see menu  
✅ **GPS only when needed** - Better battery life and user experience  
✅ **Matches popular apps** - Similar to Uber, DoorDash behavior  
✅ **Clear separation** - Permission vs GPS are distinct concerns

### Permission Handler Usage

- **Location Permission**: Use `Permission.locationWhenInUse`
- **GPS Status**: Use `Permission.locationWhenInUse.serviceStatus.isEnabled`
- **Settings**: Use `openAppSettings()` for permanently denied cases

### Android vs iOS Differences

- **Android**: Shows "Location Accuracy" system dialog for GPS
- **iOS**: Location permission includes accuracy level, but separate GPS toggle may not be needed

---

## Flow Diagram Summary

```
APP LAUNCH
    ↓
Check Location Permission
    ↓
┌─────────────────┬─────────────────┐
│   GRANTED       │   NOT GRANTED   │
│                 │                 │
│ Enter App       │ Request (1st)   │
│ (No GPS check)  │ (System Dialog) │
│                 │                 │
│                 │ ┌───────────────┴───────────────┐
│                 │ │                               │
│                 │ GRANTED    DENIED               │
│                 │ │           │                   │
│                 │ Continue   Request (2nd)        │
│                 │ to App      (System Dialog)     │
│                 │           │                     │
│                 │           └─────────┬───────────┘
│                 │                      │
│                 │            ┌────────┴────────┐
│                 │            │                  │
│                 │         GRANTED  PERMANENTLY │
│                 │         │        DENIED       │
│                 │    Continue  Blocking        │
│                 │    to App    Dialog          │
└─────────────────┴──────────────────────────────┘

When User Opens GPS-Required Screen:
    ↓
Check Permission (safety check)
    ↓
Check GPS Status
    ↓
┌─────────────────┬─────────────────┐
│   ENABLED       │   DISABLED      │
│                 │                 │
│ Screen works    │ Show Rationale  │
│ normally        │ UI              │
│                 │                 │
│                 │ Request Location│
│                 │ (System Dialog) │
│                 │ (Turn on/No)    │
│                 │                 │
│                 │ Keep retrying   │
│                 │ until enabled   │
│                 │ (Back blocked)  │
└─────────────────┴─────────────────┘
```

## Implementation Files

### Core Files

1. **`location_permission_service.dart`**

   - Static service for all permission operations
   - Methods: `checkPermissionStatus()`, `requestPermission()`, `isGpsEnabled()`, `requestCurrentLocation()`, `isPermanentlyDenied()`, `shouldShowRequestRationale()`

2. **`location_permission_blocking_dialog.dart`**

   - Blocking dialog shown when permission is permanently denied
   - Uses `PopScope` to prevent back button dismissal
   - Handles app lifecycle to re-check permission when user returns from settings

3. **`location_gps_guard_perscreen.dart`**
   - Widget guard for screens requiring GPS
   - Shows rationale UI when GPS is disabled
   - Uses `PopScope` to prevent back button bypass
   - Automatically requests location (triggers system GPS dialog)
   - Keeps retrying until GPS is enabled

### Integration Points

1. **Splash Screen** (`lib/features/splash/splash_screen.dart`)

   - Checks permission status on app launch
   - Requests permission twice (first attempt, then second if denied)
   - Shows blocking dialog only when permanently denied

2. **Branch Selection Screen** (`lib/features/branch/presentation/screens/branch_selection_screen.dart`)

   - Wrapped with `LocationGpsGuardPerscreen`
   - GPS required to sort branches by distance

3. **Cart Screen** (`lib/features/cart/presentation/screens/cart_screen.dart`)
   - Wrapped with `LocationGpsGuardPerscreen`
   - GPS required for location-based features