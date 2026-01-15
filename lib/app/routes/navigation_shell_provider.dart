import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_shell_provider.g.dart';

/// Stores the current [StatefulNavigationShell] so deep widgets can **switch tabs**
/// without doing route navigation.
///
/// Why: in a tabbed app (`StatefulShellRoute`), calling `go/pushReplacement` from a
/// deep widget may act on the wrong nested navigator/branch and cause odd UI bugs.
/// Tab switches should use `goBranch(...)` instead.
@Riverpod(keepAlive: true)
class NavigationShell extends _$NavigationShell {
  @override
  StatefulNavigationShell? build() => null;

  void setShell(StatefulNavigationShell shell) {
    state = shell;
  }

  void clear() {
    state = null;
  }

  /// Switch to Home tab (branch index 0) if shell is available.
  bool goHome() {
    final shell = state;
    if (shell == null) return false;
    shell.goBranch(0);
    return true;
  }
}
