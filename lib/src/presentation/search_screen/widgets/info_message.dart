import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fuksiarz/assets/app_icon_assets.dart';
import 'package:fuksiarz/config/app_theme_extension.dart';

class InfoMessage extends StatelessWidget {
  const InfoMessage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  static const iconSize = 84.0;

  final String title;
  final String subtitle;
  final IconAssets icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          icon.path,
          width: iconSize,
          height: iconSize,
        ),
        const SizedBox(height: 24),
        Text(
          title,
          style: context.textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          style: context.textTheme.subtitleLarge.copyWith(
            color: context.colors.onPrimaryAccent,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
