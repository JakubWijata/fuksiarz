import 'package:flutter/material.dart';
import 'package:fuksiarz/config/app_color_schame.dart';
import 'package:fuksiarz/config/app_text_theme.dart';

AppTheme appTheme = AppTheme(
  colorScheme: _colorScheme,
  textTheme: textTheme,
  fontFamily: 'Montserrat',
);

AppColorScheme _colorScheme = AppColorScheme(
  primary: Color(0xFFF8F8F8),
  onPrimary: Color(0xFF000000),
  onPrimaryAccent: Color(0xFF949494),
  separatorPrimary: Color(0xFFE0E6ED),
  borderPrimary: Color(0xFFE3E8EE),
  shadow: Color(0x00000000).withAlpha(64),
  onAccent: Color(0xFFFFFFFF),
  accent: Color(0xFFC62828),
  accent2: Color(0xFF9CB3CA),
  accent3: Color(0xFF27C229),
  accent4: Color(0xFFE3E8EE),
  success: Color(0xFF27C229),
  onSuccess: Color(0xFFFFFFFF),
  error: Color(0xFFC62828),
  onError: Color(0xFFFFFFFF),
  background: Color(0xFFF8F8F8),
);

AppTextTheme textTheme = AppTextTheme(
  titleLarge: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  ),
  titleMedium: const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
  ),
  subtitleLarge: const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
  ),
  subtitleSmall: const TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w600,
  ),
);

class AppTheme {
  const AppTheme({
    required this.colorScheme,
    required this.textTheme,
    required this.fontFamily,
  });

  final AppColorScheme colorScheme;
  final AppTextTheme textTheme;
  final String fontFamily;

  ThemeData toThemeData() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: colorScheme.primary,
      fontFamily: fontFamily,
      scaffoldBackgroundColor: colorScheme.background,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.primary,
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: colorScheme.primary,
        primary: colorScheme.primary,
        error: colorScheme.error,
      ),
    );
  }
}
