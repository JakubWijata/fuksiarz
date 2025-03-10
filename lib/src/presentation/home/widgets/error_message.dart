import 'package:flutter/material.dart';
import 'package:fuksiarz/config/app_theme.dart';
import 'package:fuksiarz/config/app_theme_extension.dart';
import 'package:fuksiarz/l10n/l10n.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.l10n.something_went_wrong,
          style: textTheme.titleLarge,
        ),
        SizedBox(
          height: 8,
        ),
        ElevatedButton(
          onPressed: onPressed,
          child: Text(
            context.l10n.try_again,
            style: textTheme.titleLarge.copyWith(
              color: context.colors.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
