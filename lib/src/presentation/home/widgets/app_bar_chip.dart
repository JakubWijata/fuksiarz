import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fuksiarz/assets/app_icon_assets.dart';
import 'package:fuksiarz/config/app_theme_extension.dart';

class AppBarChip extends StatelessWidget {
  const AppBarChip({
    super.key,
    required this.onTap,
    required this.icon,
    required this.label,
  });

  final VoidCallback onTap;
  final IconAssets icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.all(Radius.circular(50)),
      child: Container(
        padding: const EdgeInsets.fromLTRB(
          5.5,
          5,
          10,
          5.5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(
            color: context.colors.borderPrimary,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: SvgPicture.asset(
                icon.path,
              ),
            ),
            SizedBox.square(dimension: 6),
            Text(
              label,
              style: context.textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
