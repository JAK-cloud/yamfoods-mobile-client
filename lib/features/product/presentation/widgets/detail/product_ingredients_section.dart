import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../../app/theme/app_colors.dart';
import '../../../../../app/theme/app_sizes.dart';
import '../../../../../app/theme/app_text_styles.dart';

/// Displays product ingredients as colorful flowing chips.
///
/// Each ingredient is shown in a styled chip with varied colors
/// for a vibrant, appetizing look.
class ProductIngredientsSection extends StatelessWidget {
  final List<String> ingredients;

  const ProductIngredientsSection({super.key, required this.ingredients});

  // Colorful palette for ingredient chips
  static const List<Color> _chipColors = [
    Color(0xFF059669), // Green (emerald)
    Color(0xFF3B82F6), // Blue
    Color(0xFFF59E0B), // Amber/Yellow
    Color(0xFF8B5CF6), // Purple
    Color(0xFFEC4899), // Pink
    Color(0xFF14B8A6), // Teal
    Color(0xFFEF4444), // Red
    Color(0xFF64390C), // Primary brown
  ];

  @override
  Widget build(BuildContext context) {
    if (ingredients.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title with vertical bar
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Vertical accent bar (wall) - matches title height
                  Container(
                    width: 4,
                    height: 24, // Matches h4 font size
                    margin: const EdgeInsets.only(right: AppSizes.sm, top: 2),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  // Section Title with count
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'Ingredients',
                          style: AppTextStyles.h4.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSizes.sm + 2,
                            vertical: AppSizes.xs,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(
                              AppSizes.radiusSm,
                            ),
                          ),
                          child: Text(
                            '${ingredients.length} items',
                            style: AppTextStyles.caption.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: AppSizes.md),

              // Ingredients Wrap
              Wrap(
                spacing: AppSizes.sm,
                runSpacing: AppSizes.sm,
                alignment: WrapAlignment.spaceBetween,
                children: ingredients.asMap().entries.map((entry) {
                  final index = entry.key;
                  final ingredient = entry.value;
                  final color = _chipColors[index % _chipColors.length];

                  return _IngredientChip(ingredient: ingredient, color: color)
                      .animate()
                      .fadeIn(
                        duration: 300.ms,
                        delay: Duration(milliseconds: 500 + (index * 50)),
                      )
                      .scale(
                        begin: const Offset(0.8, 0.8),
                        end: const Offset(1, 1),
                        duration: 300.ms,
                        delay: Duration(milliseconds: 500 + (index * 50)),
                        curve: Curves.easeOutBack,
                      );
                }).toList(),
              ),
            ],
          ),
        )
        .animate()
        .fadeIn(duration: 400.ms, delay: 500.ms)
        .slideY(begin: 0.15, end: 0, curve: Curves.easeOutCubic);
  }
}

/// Individual ingredient chip with colorful styling and dot indicator.
class _IngredientChip extends StatelessWidget {
  final String ingredient;
  final Color color;

  const _IngredientChip({required this.ingredient, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(AppSizes.radiusLg + 4),
        border: Border.all(color: color.withValues(alpha: 0.25), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Colored dot
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: AppSizes.sm),
          // Ingredient text
          Text(
            ingredient,
            style: AppTextStyles.caption.copyWith(
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
