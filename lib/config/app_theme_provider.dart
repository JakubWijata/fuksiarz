import 'package:flutter/material.dart';
import 'package:fuksiarz/config/app_theme.dart';

class AppThemeProvider extends InheritedWidget {
  const AppThemeProvider({
    required this.theme,
    required super.child,
    super.key,
  });

  final AppTheme theme;

  static AppThemeProvider? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppThemeProvider>();
  }

  static AppThemeProvider of(BuildContext context) {
    final result = maybeOf(context);
    assert(result != null, 'No App config provider found in context');

    return result!;
  }

  @override
  bool updateShouldNotify(AppThemeProvider oldWidget) {
    return theme != oldWidget.theme;
  }
}
