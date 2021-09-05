import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:todo/settings/settings.dart';

class DisclaimerPage extends BeamPage {
  DisclaimerPage({
    required String disclaimer,
  }) : super(
          title: 'Términos de uso',
          type: BeamPageType.cupertino,
          child: DisclaimerView(
            disclaimer: disclaimer,
          ),
        );

  static String get pathBlueprint => '/settings/disclaimer';

  static String route() => '/settings/disclaimer';

  static void open(
    BuildContext context, {
    required String disclaimer,
  }) =>
      context.beamToNamed(
        route(),
        data: {'disclaimer': disclaimer},
      );

  static bool checkBeamState(BeamState state) =>
      state.pathBlueprintSegments.contains('disclaimer') &&
      state.data.containsKey('disclaimer');
}
