import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/settings/settings.dart';

class SettingsPage extends BeamPage {
  SettingsPage()
      : super(
          title: 'Ajustes',
          type: BeamPageType.cupertino,
          child: BlocProvider<SettingsBloc>(
            create: (context) => getIt(),
            child: const SettingsView(),
          ),
        );

  static String get pathBlueprint => '/settings';

  static String route() => '/settings';

  static void open(BuildContext context) => context.beamToNamed(
        route(),
        popBeamLocationOnPop: true,
      );

  static bool checkBeamState(BeamState state) =>
      state.pathBlueprintSegments.contains('settings');
}
