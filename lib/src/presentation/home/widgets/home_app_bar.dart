import 'package:flutter/material.dart';
import 'package:fuksiarz/assets/app_icon_assets.dart';
import 'package:fuksiarz/assets/app_image_assets.dart';
import 'package:fuksiarz/src/presentation/home/widgets/app_bar_chip.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    required this.onAddMoneyPressed,
    required this.addMoneyLabel,
  });

  static const _logoHeight = 20.0;

  final VoidCallback onAddMoneyPressed;
  final String addMoneyLabel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.fromLTRB(
          20,
          20,
          20,
          15,
        ),
        child: Row(
          children: [
            Image.asset(
              ImageAssets.logo.path,
              height: _logoHeight,
              fit: BoxFit.fitHeight,
            ),
            Spacer(),
            AppBarChip(
              icon: IconAssets.addCircle,
              label: addMoneyLabel,
              onTap: onAddMoneyPressed,
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
