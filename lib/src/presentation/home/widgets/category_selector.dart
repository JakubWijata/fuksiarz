import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fuksiarz/assets/app_icon_assets.dart';
import 'package:fuksiarz/l10n/l10n.dart';
import 'package:fuksiarz/src/domain/entities/category_type.dart';
import 'package:fuksiarz/src/presentation/common/category_type_translations.dart';
import 'package:fuksiarz/src/presentation/home/widgets/category_chip.dart';

class ChipData {
  ChipData({
    required this.count,
    required this.type,
  });

  final int count;
  final CategoryType type;
}

class CategorySelector extends StatelessWidget {
  const CategorySelector({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategoryPressed,
    required this.onSelectAllPressed,
    required this.allEventsCount,
  });

  final List<ChipData> categories;
  final Option<CategoryType> selectedCategory;
  final ValueSetter<CategoryType> onCategoryPressed;
  final VoidCallback onSelectAllPressed;
  final int allEventsCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SvgPicture.asset(IconAssets.tune.path),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryChip(
                  onPressed: onSelectAllPressed,
                  isSelected: selectedCategory.isNone(),
                  label: context.l10n.all_category,
                  count: allEventsCount,
                ),
                SizedBox(
                  width: 10,
                ),
                ...categories.map(
                  (chipData) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CategoryChip(
                      onPressed: () => onCategoryPressed.call(chipData.type),
                      isSelected: selectedCategory.fold(
                        () => false,
                        (category) => category == chipData.type,
                      ),
                      label: chipData.type.categoryName(context),
                      count: chipData.count,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
