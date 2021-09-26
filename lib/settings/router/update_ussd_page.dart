import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/settings/bloc/update_ussd/update_ussd_bloc.dart';
import 'package:todo/settings/view/update_ussd_view.dart';

class UpdateUssdPage extends BeamPage {
  UpdateUssdPage()
      : super(
          title: 'Actualizar códigos',
          type: BeamPageType.cupertino,
          child: BlocProvider<UpdateUssdBloc>(
            create: (context) => getIt(),
            child: const UpdateUssdView(),
          ),
        );

  static String get pathBlueprint => '/settings/update_codes';

  static String route() => '/settings/update_codes';

  static void open(
    BuildContext context,
  ) =>
      context.beamToNamed(
        route(),
      );

  static bool checkBeamState(BeamState state) =>
      state.pathBlueprintSegments.contains('update_codes');
}
