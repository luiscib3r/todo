import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/app/app.dart';

const USSD_CODES_RECENT_KEY = 'recent_codes';

@injectable
class UssdRecentDatasource {
  const UssdRecentDatasource(this._storage);

  final SharedPreferences _storage;

  Future<List<UssdItem>> getUssdCodes() async {
    final jsonString = _storage.getString(USSD_CODES_RECENT_KEY);

    if (jsonString != null) {
      final parsedJson = await parseJson(jsonString);

      parsedJson['name'] = '';
      parsedJson['description'] = '';
      parsedJson['icon'] = '';
      parsedJson['type'] = 'category';

      return UssdCategory.fromJson(parsedJson).items;
    } else {
      return [];
    }
  }

  Future<List<UssdItem>> putUssdItem(UssdItem item) async {
    final codes = (await getUssdCodes()).reversed.toList();

    var itemIndex = -1;

    for (var i = 0; i < codes.length; i++) {
      final e = codes[i];
      if (e.key == item.key) {
        itemIndex = i;
        break;
      }
    }

    if (itemIndex >= 0) {
      codes.removeAt(itemIndex);
    }

    if (codes.length >= 8) {
      codes.remove(codes.first);
    }

    codes.add(item);

    final result = codes.reversed.toList();

    final data = json.encode({
      'items': result.map((e) {
        if (e.type == 'code') {
          return (e as UssdCode).toJson();
        } else if (e.type == 'category') {
          return (e as UssdCategory).toJson();
        }
      }).toList()
    });

    await _storage.setString(USSD_CODES_RECENT_KEY, data);

    return result;
  }
}
