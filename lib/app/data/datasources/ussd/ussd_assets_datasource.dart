import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/app/app.dart';

@injectable
class UssdAssetsDatasource {
  Future<List<UssdItem>> getUssdCodes() async {
    try {
      final data = await rootBundle.loadString(Assets.config.ussdCodes);

      final parsedJson = await parseJson(data);

      parsedJson['name'] = '';
      parsedJson['description'] = '';
      parsedJson['icon'] = '';
      parsedJson['type'] = 'category';

      return UssdCategory.fromJson(parsedJson).items;
    } on Exception catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
