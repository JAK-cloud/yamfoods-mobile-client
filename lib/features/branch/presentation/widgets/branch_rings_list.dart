import 'package:flutter/material.dart';

import '../../../../app/theme/app_sizes.dart';
import '../../../../core/utils/distance_calculator.dart';
import '../../domain/entities/branch.dart';
import 'branch_ring_selector.dart';

/// Horizontal scrollable list of branch ring selectors.
///
/// Displays all branches as circular rings that can be selected.
class BranchRingsList extends StatelessWidget {
  final List<Branch> branches;
  final int selectedIndex;
  final ValueChanged<int> onBranchSelected;

  const BranchRingsList({
    super.key,
    required this.branches,
    required this.selectedIndex,
    required this.onBranchSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.xl),
        itemCount: branches.length,
        separatorBuilder: (_, __) => const SizedBox(width: AppSizes.lg),
        itemBuilder: (context, index) {
          final branch = branches[index];
          final formattedDistance =
              DistanceCalculator.calculateDistanceInMeters(
                defaultCustomerPosition,
                branch.location,
              );

          return BranchRingSelector(
            name: branch.name,
            distance: formattedDistance,
            isSelected: index == selectedIndex,
            onTap: () => onBranchSelected(index),
          );
        },
      ),
    );
  }
}
