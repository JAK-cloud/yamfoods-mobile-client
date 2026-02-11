
/// Used by [CheckoutScreen] to detect when Chapa payment route is popped (didPopNext).
final RouteObserver<ModalRoute<void>> checkoutRouteObserver =
    RouteObserver<ModalRoute<void>>();
/// Global app router configuration using go_router.
///
/// For now this is a minimal setup with placeholder screens.
/// Feature-specific routes (auth, onboarding, branches, etc.) will be added
/// gradually following the same pattern.
final GoRouter appRouter = GoRouter(
  // CRITICAL: This navigatorKey is required for SnackbarService to work properly.
  // Without it, snackbars/toasts (like snackbar.showError()) won't display because
  // they need access to the root Navigator's overlay context to show above all routes.
  // SnackbarService uses this key to get the overlay context for displaying snackbars
  // that appear on top of the entire navigation stack, regardless of the current route.
  navigatorKey: SnackbarService.rootNavigatorKey,
  initialLocation: RouteName.splash,
  observers: [checkoutRouteObserver],
  routes: [