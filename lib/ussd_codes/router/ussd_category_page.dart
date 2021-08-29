import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:todo/app/app.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class UssdCategoryPage extends BeamPage {
  UssdCategoryPage({
    required UssdCategory category,
  }) : super(
          title: category.name,
          type: BeamPageType.cupertino,
          child: UssdCategoryView(category: category),
        );

  static String get pathBlueprint => '/category';

  static String route() => '/category';

  static void open(
    BuildContext context, {
    required UssdCategory category,
  }) =>
      context.beamToNamed(route(), data: {'category': category});

  static bool checkBeamState(BeamState state) =>
      state.pathBlueprintSegments.contains('category') &&
      state.data['category'] != null;
}
