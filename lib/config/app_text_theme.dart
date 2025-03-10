import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme({
    required this.titleLarge,
    required this.subtitleLarge,
    required this.titleMedium,
    required this.subtitleSmall,
  });

  final TextStyle titleLarge;
  final TextStyle titleMedium;

  final TextStyle subtitleLarge;
  final TextStyle subtitleSmall;
}
