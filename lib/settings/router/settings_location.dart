import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:todo/home/home.dart';
import 'package:todo/settings/settings.dart';

class SettingsLocation extends BeamLocation {
  @override
  List get pathBlueprints => [
        SettingsPage.pathBlueprint,
        DisclaimerPage.pathBlueprint,
        UpdateUssdPage.pathBlueprint,
      ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        HomePage(),
        if (SettingsPage.checkBeamState(state)) SettingsPage(),
        if (DisclaimerPage.checkBeamState(state))
          DisclaimerPage(
            disclaimer: state.data['disclaimer'] as String,
          ),
        if (UpdateUssdPage.checkBeamState(state)) UpdateUssdPage(),
      ];
}
