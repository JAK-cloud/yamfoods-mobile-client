import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/components/error_widget.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/snackbar_service.dart';
import '../providers/profile_events.dart';
import '../providers/profile_providers.dart';
import '../widgets/profile_content.dart';
import '../widgets/profile_header.dart';

/// Profile screen with fixed header and scrollable content.
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(userProfileProvider);

    // Listen for profile events
    ref.listen<ProfileUiEvent?>(profileUiEventsProvider, (prev, next) {
      if (next == null) return;
      final snackbar = ref.read(snackbarServiceProvider);
      if (next is ProfileFailure) {
        snackbar.showError(next.failure);
      } else if (next is ProfileUpdated) {
        snackbar.showSuccess(next.message);
      } else if (next is PasswordChanged) {
        snackbar.showSuccess(next.message);
      }
      ref.read(profileUiEventsProvider.notifier).clear();
    });

    return Scaffold(
      backgroundColor: AppColors.background,
      body: profileState.when(
        data: (user) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fixed header
            ProfileHeader(user: user),
            // Scrollable content
            Expanded(child: ProfileContent(user: user)),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorWidgett(
          icon: Icons.error_outline,
          title: 'Error loading profile',
          failure: error is Failure
              ? error
              : Failure.unexpected(message: error.toString()),
          onRetry: () => ref.refresh(userProfileProvider.future),
        ),
      ),
    );
  }
}
