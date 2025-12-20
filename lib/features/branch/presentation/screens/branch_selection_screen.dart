import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/components/custom_button.dart';
import '../../../../app/components/empty_state.dart';
import '../../../../app/components/error_widget.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../app/theme/app_texts.dart';
import '../../../../core/errors/failure.dart';
import '../../domain/entities/branch.dart';
import '../../domain/extensions/branch_extensions.dart';
import '../providers/branch_providers.dart';
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

  @override
  Widget build(BuildContext context) {
    final branchesAsync = ref.watch(branchesProvider);

    return AnnotatedRegion<SystemUiOverlayStyle>(
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
              // Main content
              branchesAsync.when(
                data: (branches) {
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
                  child: CircularProgressIndicator(color: AppColors.white),
                ),
                error: (error, stackTrace) {
                  final failure = error is Failure
                      ? error
                      : Failure.unexpected(message: error.toString());

                  return ErrorWidgett(
                    title: 'Failed to Load Branches',
                    failure: failure,
                    onRetry: () => ref.invalidate(branchesProvider),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
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
        text: AppTexts.openNow,
        textColor: AppColors.white,
        onPressed: () {
          // TODO: Handle branch selection and navigate
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Selected: ${branch.name}'),
              duration: const Duration(seconds: 1),
            ),
          );
        },
      ),
    );
  }
}
