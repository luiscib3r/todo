import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/home/home.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class HomePage extends BeamPage {
  HomePage()
      : super(
          title: 'TODO',
          type: BeamPageType.cupertino,
          child: BlocProvider<UssdCodeBloc>(
            create: (context) => getIt(),
            child: const HomeView(),
          ),
        );

  static String get pathBlueprint => '/';

  static String route() => '/';

  static void open(BuildContext context) => context.beamToNamed(route());

  // static bool checkBeamState(BeamState state) =>
  //     state.pathBlueprintSegments.contains('home');

}
