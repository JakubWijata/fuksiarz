import 'package:flutter/widgets.dart';
import 'package:fuksiarz/config/app_color_schame.dart';
import 'package:fuksiarz/config/app_text_theme.dart';
import 'package:fuksiarz/config/app_theme_provider.dart';

extension AppThemeExtension on BuildContext {
  AppColorScheme get colors => AppThemeProvider.of(this).theme.colorScheme;
  AppTextTheme get textTheme => AppThemeProvider.of(this).theme.textTheme;
}
