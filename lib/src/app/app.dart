import 'package:flutter/material.dart';
import 'package:fuksiarz/routing/router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fuksiarz/config/app_theme.dart';
import 'package:fuksiarz/config/app_theme_provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return AppThemeProvider(
      theme: appTheme,
      child: MaterialApp.router(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: appTheme.toThemeData(),
        routerConfig: router,
      ),
    );
  }
}
