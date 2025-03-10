import 'package:flutter/material.dart';

class AppColorScheme {
  AppColorScheme({
    required this.shadow,
    required this.primary,
    required this.onPrimary,
    required this.onPrimaryAccent,
    required this.separatorPrimary,
    required this.accent,
    required this.accent2,
    required this.accent3,
    required this.accent4,
    required this.onAccent,
    required this.success,
    required this.onSuccess,
    required this.error,
    required this.onError,
    required this.background,
    required this.borderPrimary,
  });

  final Color primary;
  final Color onPrimary;
  final Color onPrimaryAccent;

  final Color separatorPrimary;
  final Color borderPrimary;
  final Color shadow;

  final Color accent;
  final Color accent2;
  final Color accent3;
  final Color accent4;
  final Color onAccent;

  final Color success;
  final Color onSuccess;

  final Color error;
  final Color onError;

  final Color background;
}
