import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../theme/app_sizes.dart';
import 'app_skeletonizer_zone.dart';
import 'product_card_skeleton.dart';

/// Fixed width for horizontal product cards (section list and skeleton).
const double kHorizontalProductCardWidth = 170;

/// Fixed height for horizontal product section content row.
const double kHorizontalProductSectionRowHeight = 260;

/// Total height for horizontal product section (title + row).
const double kHorizontalProductSectionTotalHeight =
    kHorizontalProductSectionRowHeight + 44;

/// Skeleton for horizontal product sections (discounted / featured).
///
/// Shows a section title placeholder and a horizontal list of 3 product card
/// skeletons. Shared by Special offer and Popular sections.
class HorizontalProductSectionSkeleton extends StatelessWidget {
  const HorizontalProductSectionSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSkeletonizerZone(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(AppSizes.sm),
            child: Bone(width: 180, height: 22),
          ),
          SizedBox(
            height: kHorizontalProductSectionRowHeight,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(AppSizes.sm),
              itemCount: 3,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: kHorizontalProductCardWidth,
                  height: kHorizontalProductSectionRowHeight,
                  child: Padding(
                    padding: EdgeInsets.only(right: AppSizes.md),
                    child: const ProductCardSkeleton(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
