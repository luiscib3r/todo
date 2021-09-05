import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:todo/home/home.dart';
import 'package:todo/settings/settings.dart';

class SettingsLocation extends BeamLocation {
  @override
  List get pathBlueprints => [
        SettingsPage.pathBlueprint,
      ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        HomePage(),
        if (SettingsPage.checkBeamState(state)) SettingsPage(),
      ];
}
