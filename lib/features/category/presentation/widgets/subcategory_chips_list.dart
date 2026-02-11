import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/components/skeleton/subcategory_chip_skeleton.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../subcategory/domain/entities/subcategory.dart';
import '../../../subcategory/presentation/providers/subcategory_providers.dart';
import 'subcategory_chip.dart';

class SubcategoryChipsList extends ConsumerStatefulWidget {
  final int branchId;
  final int categoryId;
  final ValueChanged<Subcategory?> onSubcategorySelected;

  const SubcategoryChipsList({
    super.key,
    required this.branchId,
    required this.categoryId,
    required this.onSubcategorySelected,
  });

  @override
  ConsumerState<SubcategoryChipsList> createState() =>
      _SubcategoryChipsListState();
}

class _SubcategoryChipsListState extends ConsumerState<SubcategoryChipsList> {
  Subcategory? _selectedSubcategory;

  @override
  void initState() {
    super.initState();
    _selectedSubcategory = null;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onSubcategorySelected(null);
    });
  }

  void _handleSubcategoryTap(Subcategory? subcategory) {
    setState(() {
      _selectedSubcategory = subcategory;
    });
    widget.onSubcategorySelected(subcategory);
  }

  @override
  Widget build(BuildContext context) {
    final subcategoriesAsync = ref.watch(
      subcategoriesProvider(widget.branchId, widget.categoryId),
    );

    return subcategoriesAsync.when(
      data: (subcategories) {
        if (subcategories.isEmpty) {
          return const SizedBox.shrink();
        }

        return SizedBox(
          height: 48,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: AppSizes.lg),
            itemCount: subcategories.length + 1,
            separatorBuilder: (_, __) => SizedBox(width: AppSizes.md),
            itemBuilder: (context, index) {
              if (index == 0) {
                return SubcategoryChip(
                  subcategory: null,
                  isSelected: _selectedSubcategory == null,
                  onTap: () => _handleSubcategoryTap(null),
                );
              }

              final subcategory = subcategories[index - 1];
              return SubcategoryChip(
                subcategory: subcategory,
                isSelected: _selectedSubcategory?.id == subcategory.id,
                onTap: () => _handleSubcategoryTap(subcategory),
              );
            },
          ),
        );
      },
      loading: () => subCatSkeleton(),
      error: (error, stackTrace) => subCatSkeleton(),
    );
  }

  SizedBox subCatSkeleton() {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: AppSizes.lg),
        itemCount: 5,
        separatorBuilder: (_, _) => SizedBox(width: AppSizes.md),
        itemBuilder: (context, index) {
          return const SubcategoryChipSkeleton();
        },
      ),
    );
  }
}
