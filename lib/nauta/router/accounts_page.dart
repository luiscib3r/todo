import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/nauta/nauta.dart';

class AccountsPage extends BeamPage {
  AccountsPage()
      : super(
          title: 'Cuentas',
          type: BeamPageType.cupertino,
          child: BlocProvider<AccountsBloc>(
            create: (context) => getIt(),
            child: const AccountsView(),
          ),
        );

  static String get pathBlueprint => '/nauta/accounts';

  static String route() => '/nauta/accounts';

  static void open(BuildContext context) => context.beamToNamed(route());

  static bool checkBeamState(BeamState state) =>
      state.pathBlueprintSegments.contains('accounts');
}
