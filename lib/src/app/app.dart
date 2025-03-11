import 'package:flutter/material.dart';
import 'package:fuksiarz/routing/router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fuksiarz/config/app_theme.dart';
import 'package:fuksiarz/config/app_theme_provider.dart';
import 'package:intl/intl.dart';

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
        localeResolutionCallback: localeResolutionCallback,
        theme: appTheme.toThemeData(),
        routerConfig: router,
      ),
    );
  }

  Locale? localeResolutionCallback(
      Locale? locale, Iterable<Locale>? supportedLocales) {
    final defaultLocale = AppLocalizations.supportedLocales.first;
    if (locale == null || supportedLocales == null) return defaultLocale;

    final currentLocale = supportedLocales.firstWhere(
      (e) => e.languageCode == locale.languageCode,
      orElse: () => defaultLocale,
    );
    setIntlLocale(currentLocale);
    return currentLocale;
  }

  void setIntlLocale(Locale locale) {
    Intl.defaultLocale = locale.toString();
  }
}
