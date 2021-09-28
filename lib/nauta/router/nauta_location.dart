import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:todo/home/home.dart';
import 'package:todo/nauta/nauta.dart';

class NautaLocation extends BeamLocation {
  @override
  List get pathBlueprints => [
        AccountsPage.pathBlueprint,
      ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        HomePage(),
        if (AccountsPage.checkBeamState(state)) AccountsPage(),
      ];
}
