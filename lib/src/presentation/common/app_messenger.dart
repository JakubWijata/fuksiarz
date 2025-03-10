import 'package:flutter/material.dart';
import 'package:fuksiarz/config/app_theme_extension.dart';

class AppMessenger {
  static void showInfo(BuildContext context, String info) => _showSnackBar(
        context,
        SnackBar(
          content: Text(info),
        ),
      );

  static void showError(BuildContext context, String error) => _showSnackBar(
        context,
        SnackBar(
          content: Text(
            error,
            style: context.textTheme.subtitleLarge
                .copyWith(color: context.colors.onError),
          ),
          backgroundColor: context.colors.error,
        ),
      );

  static void _showSnackBar(BuildContext context, SnackBar snackBar) {
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
