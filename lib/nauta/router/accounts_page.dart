import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:todo/nauta/nauta.dart';

class AccountsPage extends BeamPage {
  AccountsPage()
      : super(
          title: 'Cuentas',
          type: BeamPageType.cupertino,
          child: const AccountsView(),
        );

  static String get pathBlueprint => '/nauta/accounts';

  static String route() => '/nauta/accounts';

  static void open(BuildContext context) => context.beamToNamed(route());

  static bool checkBeamState(BeamState state) =>
      state.pathBlueprintSegments.contains('accounts');
}
