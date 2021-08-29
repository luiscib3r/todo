import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:todo/app/app.dart';
import 'package:todo/home/home.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class UssdCodesLocation extends BeamLocation {
  @override
  List get pathBlueprints => [
        UssdCategoryPage.pathBlueprint,
        UssdCodeFormPage.pathBlueprint,
      ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        HomePage(),
        if (UssdCategoryPage.checkBeamState(state))
          UssdCategoryPage(category: state.data['category'] as UssdCategory),
        if (UssdCodeFormPage.checkBeamState(state))
          UssdCodeFormPage(code: state.data['code'] as UssdCode),
      ];
}
