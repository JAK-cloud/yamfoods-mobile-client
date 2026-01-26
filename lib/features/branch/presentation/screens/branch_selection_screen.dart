import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/components/custom_button.dart';
import '../../../../app/routes/route_names.dart';
import '../../../../app/components/empty_state.dart';
import '../../../../app/components/error_widget.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../app/theme/app_texts.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/permissions/location/location_gps_guard_perscreen.dart';
import '../../../../core/services/app_info_service.dart';
import '../../../app_configuration/domain/entities/app_version.dart';
import '../../../app_configuration/presentation/providers/app_configuration_providers.dart';
import '../../domain/entities/branch.dart';
import '../../domain/extensions/branch_extensions.dart';
import '../providers/branch_providers.dart';
import '../widgets/app_update_bottom_sheet.dart';
import '../widgets/branch_details_section.dart';
import '../widgets/branch_info_row.dart';
import '../widgets/branch_rings_list.dart';
import '../widgets/branch_status_badge.dart';

/// Full screen branch selection with gradient background.
///
/// Displays branches as horizontal scrollable rings with selected
/// branch details shown below.
class BranchSelectionScreen extends ConsumerStatefulWidget {
  const BranchSelectionScreen({super.key});

  @override
  ConsumerState<BranchSelectionScreen> createState() =>
      _BranchSelectionScreenState();
}

class _BranchSelectionScreenState extends ConsumerState<BranchSelectionScreen> {
  int _selectedIndex = 0;
  bool _hasShownAppUpdateSheet = false;

  @override
  Widget build(BuildContext context) {
    final appConfigAsync = ref.watch(appConfigurationProvider);
    final branchesAsync = ref.watch(branchesProvider);
    final appInfoAsync = ref.watch(appInfoProvider);

    // Wrap with GPS guard - ensures GPS is enabled before showing branch selection
    return LocationGpsGuardPerscreen(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.0, 0.3, 0.7, 1.0],
                colors: [
                  AppColors.primary,
                  AppColors.primary.withValues(alpha: 0.95),
                  AppColors.primary.withValues(alpha: 0.85),
                  AppColors.secondary,
                ],
              ),
            ),
            child: Stack(
              children: [
                // Animated floating circle - top right
                _buildAnimatedCircle(
                  right: -50,
                  top: 80,
                  size: 180,
                  opacity: 0.06,
                  duration: 3,
                ),
                // Animated floating circle - bottom left
                _buildAnimatedCircle(
                  left: -40,
                  bottom: 150,
                  size: 140,
                  opacity: 0.04,
                  duration: 4,
                ),
                appConfigAsync.when(
                  data: (config) => appInfoAsync.when(
                    data: (appInfo) => branchesAsync.when(
                      data: (branches) {
                        _maybeShowAppUpdateSheet(
                          context: context,
                          backend: config.appVersion,
                          current: appInfo,
                        );

                        if (branches.isEmpty) {
                          return EmptyState(
                            icon: Icons.store_outlined,
                            title: 'No Branches Available',
                            subtitle:
                                'There are no branches available at the moment.',
                          );
                        }

                        final selectedBranch = branches[_selectedIndex];
                        return _buildContent(branches, selectedBranch);
                      },
                      loading: () => const Center(
                        child:
                            CircularProgressIndicator(color: AppColors.white),
                      ),
                      error: (error, stackTrace) {
                        final failure = error is Failure
                            ? error
                            : Failure.unexpected(message: error.toString());

                        return ErrorWidgett(
                          title: 'Failed to Load Branches',
                          failure: failure,
                          onRetry: () => ref.refresh(branchesProvider.future),
                        );
                      },
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(color: AppColors.white),
                    ),
                    error: (error, stackTrace) {
                      final failure = error is Failure
                          ? error
                          : Failure.unexpected(message: error.toString());

                      return ErrorWidgett(
                        title: 'Failed to Load App Info',
                        failure: failure,
                        onRetry: () => ref.refresh(appInfoProvider.future),
                      );
                    },
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(color: AppColors.white),
                  ),
                  error: (error, stackTrace) {
                    final failure = error is Failure
                        ? error
                        : Failure.unexpected(message: error.toString());

                    return ErrorWidgett(
                      title: 'Oops! Something went wrong, Please try again later or contact support. ERRORCODE = GIF#1eNOC',
                      failure: failure,
                      onRetry: () => ref.refresh(appConfigurationProvider.future),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _maybeShowAppUpdateSheet({
    required BuildContext context,
    required AppVersion backend,
    required AppInfo current,
  }) {
    if (_hasShownAppUpdateSheet) return;

    final shouldShow =
        backend.version != current.version ||
        backend.buildNumber != current.buildNumber;
    if (!shouldShow) return;

    _hasShownAppUpdateSheet = true;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted) return;

      final isBlocking = backend.mustBeBlocking;

      await showModalBottomSheet<void>(
        context: context,
        isDismissible: !isBlocking,
        enableDrag: !isBlocking,
        isScrollControlled: true,
        barrierColor: isBlocking ? Colors.black54 : Colors.transparent,
        backgroundColor: Colors.transparent,
        builder: (ctx) {
          final height = MediaQuery.sizeOf(ctx).height;
          return SizedBox(
            height: isBlocking ? height : null,
            child: AppUpdateBottomSheet(
              backend: backend,
              current: current,
              isBlocking: isBlocking,
            ),
          );
        },
      );
    });
  }

  Widget _buildAnimatedCircle({
    double? left,
    double? right,
    double? top,
    double? bottom,
    required double size,
    required double opacity,
    required int duration,
  }) {
    return Positioned(
      left: left,
      right: right,
      top: top,
      bottom: bottom,
      child:
          Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white.withValues(alpha: opacity),
                ),
              )
              .animate(onPlay: (c) => c.repeat())
              .scale(
                duration: Duration(seconds: duration),
                begin: const Offset(1, 1),
                end: const Offset(1.15, 1.15),
              )
              .then()
              .scale(
                duration: Duration(seconds: duration),
                begin: const Offset(1.15, 1.15),
                end: const Offset(1, 1),
              ),
    );
  }

  Widget _buildContent(List<Branch> branches, Branch selectedBranch) {
    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 60),

            // Description text - centered
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.xl),
              child: Text(
                AppTexts.selectBranchDescription,
                style: AppTextStyles.h5.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: AppSizes.xl),
            BranchStatusBadge(isOpen: selectedBranch.isCurrentlyOpen),
            const SizedBox(height: AppSizes.lg),

            // Phone and Working Hours
            BranchInfoRow(
              phone: selectedBranch.contactPhone,
              openingHour: selectedBranch.openingHour,
              closingHour: selectedBranch.closingHour,
            ),

            const SizedBox(height: AppSizes.xxl),

            // Branch rings - horizontal scroll
            BranchRingsList(
              branches: branches,
              selectedIndex: _selectedIndex,
              onBranchSelected: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),

            const SizedBox(height: AppSizes.xxl),

            // Selected branch details - natural height
            BranchDetailsSection(branch: selectedBranch),

            const SizedBox(height: AppSizes.lg),

            // Open button
            _buildOpenButton(selectedBranch),

            const SizedBox(height: AppSizes.xl),
          ],
        ),
      ),
    );
  }

  Widget _buildOpenButton(Branch branch) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.lg),
      child: CustomButton(
        text: 'CONTINUE >>>',
        textColor: AppColors.white,
        onPressed: () {
          //first clear the branch id if exist
          ref.read(currentBranchProvider.notifier).clear();
          // Store the selected branch ID and check if successful
          final success = ref
              .read(currentBranchProvider.notifier)
              .set(branch.id);

          // Only navigate if branch ID was successfully stored
          if (success && mounted) {
            // IMPORTANT: Use `go()` (not `push()`) when entering the tab shell routes (Home/Cart/Order/Profile).
            // `push()` can create an inconsistent stack across nested navigators and later cause navigation/layout issues.
            context.go(RouteName.home);
          }
          // If setting failed, the user stays on the branch selection screen
          // This is a safety measure - in practice, this should rarely fail
        },
      ),
    );
  }
}
