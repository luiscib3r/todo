import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todo/app/app.dart';
import 'package:todo/app/bloc/bloc.dart';
import 'package:todo/app/theme/theme.dart';
import 'package:todo/home/home.dart';
import 'package:todo/nauta/nauta.dart';
import 'package:todo/settings/router/router.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class AppRouter extends StatelessWidget {
  const AppRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders,
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp.router(
            title: 'TODO',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: themeState.themeMode,
            routeInformationParser: BeamerParser(),
            routerDelegate: routerDelegate,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }

  static final routerDelegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        HomeLocation(),
        UssdCodesLocation(),
        SettingsLocation(),
        NautaLocation(),
      ],
    ),
  );
}
