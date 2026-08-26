import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'location_permission_service.dart';

/// Optional GPS guard: prompts to enable GPS at most [maxAttempts] times, then stops.
///
/// Same behavior as [LocationGpsGuardPerscreen], but GPS is not mandatory — after
/// the limit is reached the child stays usable without further prompts.
///
/// Usage:
/// ```dart
/// LocationGpsOptionalGuardPerscreen(
///   child: SomeScreen(),
/// )
/// ```
class LocationGpsOptionalGuardPerscreen extends StatefulWidget {
  const LocationGpsOptionalGuardPerscreen({
    super.key,
    required this.child,
    this.maxAttempts = 2,
  });

  final Widget child;

  /// How many times to show the system GPS dialog before giving up.
  final int maxAttempts;

  @override
  State<LocationGpsOptionalGuardPerscreen> createState() =>
      _LocationGpsOptionalGuardPerscreenState();
}

class _LocationGpsOptionalGuardPerscreenState
    extends State<LocationGpsOptionalGuardPerscreen>
    with WidgetsBindingObserver {
  int _attemptCount = 0;
  bool _isChecking = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _checkGpsStatus();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  /// Checks GPS status and requests location if needed, up to [maxAttempts].
  Future<void> _checkGpsStatus() async {
    if (_isChecking || _attemptCount >= widget.maxAttempts) {
      return;
    }

    final permissionStatus =
        await LocationPermissionService.checkPermissionStatus();

    if (!permissionStatus.isGranted) {
      return;
    }

    final isEnabled = await LocationPermissionService.isGpsEnabled();

    if (isEnabled) {
      return;
    }

    _isChecking = true;
    _attemptCount++;

    try {
      await LocationPermissionService.requestCurrentLocation();
    } catch (_) {
      if (mounted && _attemptCount < widget.maxAttempts) {
        _isChecking = false;
        await _checkGpsStatus();
        return;
      }
    } finally {
      _isChecking = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      _checkGpsStatus();
    }
  }
}
