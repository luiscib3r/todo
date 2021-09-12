import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todo/app/theme/theme.dart';
import 'package:todo/home/home.dart';
import 'package:todo/l10n/l10n.dart';
import 'package:todo/settings/router/router.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class AppRouter extends StatelessWidget {
  const AppRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'TODO',
      theme: lightTheme,
      darkTheme: darkTheme,
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }

  static final routerDelegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        HomeLocation(),
        UssdCodesLocation(),
        SettingsLocation(),
      ],
    ),
  );
}
