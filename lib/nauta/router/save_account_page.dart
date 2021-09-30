import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/nauta/nauta.dart';

class SaveAccountPage extends BeamPage {
  SaveAccountPage()
      : super(
          title: 'Guardar Cuenta',
          type: BeamPageType.cupertino,
          child: BlocProvider<SaveAccountBloc>(
            create: (context) => getIt(),
            child: const SaveAccountView(),
          ),
        );

  static String get pathBlueprint => '/nauta/accounts/save';

  static String route() => '/nauta/accounts/save';

  static void open(BuildContext context) => context.beamToNamed(route());

  static bool checkBeamState(BeamState state) =>
      state.pathBlueprintSegments.contains('save');
}
