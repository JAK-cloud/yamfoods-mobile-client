import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../branch/presentation/providers/branch_providers.dart';
import '../../domain/entities/category.dart';
import '../widgets/category_header.dart';
import '../widgets/category_products_grid.dart';
import '../widgets/subcategory_chips_list.dart';
import '../../../subcategory/domain/entities/subcategory.dart';

class CategoryScreen extends ConsumerStatefulWidget {
  final Category category;

  const CategoryScreen({super.key, required this.category});

  @override
  ConsumerState<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends ConsumerState<CategoryScreen> {
  Subcategory? _selectedSubcategory;

  @override
  void initState() {
    super.initState();
    _selectedSubcategory = null;
  }

  void _handleSubcategorySelected(Subcategory? subcategory) {
    setState(() {
      _selectedSubcategory = subcategory;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get current branch ID - guaranteed to exist since branch selection is enforced
    final branchId = ref.watch(currentBranchProvider)!;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: AppSizes.sm),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.primary,
                    AppColors.primary.withValues(alpha: 0.05),
                  ],
                ),
              ),
              child: Column(
                children: [
                  CategoryHeader(
                    category: widget.category,
                    onSearchTap: () {
                      // TODO: Implement search functionality
                    },
                  ),
                  SubcategoryChipsList(
                    branchId: branchId,
                    categoryId: widget.category.id,
                    onSubcategorySelected: _handleSubcategorySelected,
                  ),
                ],
              ),
            ),

            Expanded(
              child: CategoryProductsGrid(
                branchId: branchId,
                categoryId: widget.category.id,
                selectedSubcategory: _selectedSubcategory,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
