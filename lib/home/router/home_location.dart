import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:todo/home/home.dart';

class HomeLocation extends BeamLocation {
  @override
  List get pathBlueprints => [
        HomePage.pathBlueprint,
      ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        HomePage(),
      ];
}
