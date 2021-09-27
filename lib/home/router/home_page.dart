import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:todo/home/home.dart';

class HomePage extends BeamPage {
  HomePage()
      : super(
          title: 'TODO',
          type: BeamPageType.cupertino,
          child: const HomeView(),
        );

  static String get pathBlueprint => '/';

  static String route() => '/';

  static void open(BuildContext context) => context.beamToNamed(route());

  // static bool checkBeamState(BeamState state) =>
  //     state.pathBlueprintSegments.contains('home');

}
