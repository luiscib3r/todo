import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:todo/app/app.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class UssdCodeFormPage extends BeamPage {
  UssdCodeFormPage({
    required UssdCode code,
  }) : super(
          title: code.name,
          type: BeamPageType.cupertino,
          child: UssdCodeFormView(code: code),
        );

  static String get pathBlueprint => '/code_form';

  static String route() => '/code_form';

  static void open(
    BuildContext context, {
    required UssdCode code,
  }) =>
      context.beamToNamed(route(), data: {'code': code});

  static bool checkBeamState(BeamState state) =>
      state.pathBlueprintSegments.contains('code_form') &&
      state.data['code'] != null;
}
