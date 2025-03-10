import 'package:flutter/material.dart';
import 'package:fuksiarz/config/app_theme_extension.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.onPressed,
    required this.isSelected,
    required this.label,
    required this.count,
  });

  static BorderRadius borderRadius = BorderRadius.circular(25);
  static EdgeInsets padding = EdgeInsets.symmetric(
    horizontal: 10,
    vertical: 9,
  );

  final VoidCallback onPressed;
  final bool isSelected;
  final String label;
  final int count;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: borderRadius,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? context.colors.accent4 : null,
          border: Border.all(color: context.colors.borderPrimary),
          borderRadius: borderRadius,
        ),
        padding: padding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: context.textTheme.titleMedium,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              '$count',
              style: context.textTheme.titleMedium.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
