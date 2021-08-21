import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/app/app.dart';

const USSD_CODES_KEY = 'config';
const USSD_CODES_HASH = 'hash';

@injectable
class UssdLocalDatasource {
  const UssdLocalDatasource(this._storage);

  final SharedPreferences _storage;

  Future<List<UssdItem>> getUssdCodes() async {
    final jsonString = _storage.getString(USSD_CODES_KEY);

    if (jsonString != null) {
      final parsedJson = await parseJson(jsonString);

      parsedJson['name'] = '';
      parsedJson['description'] = '';
      parsedJson['icon'] = '';
      parsedJson['type'] = 'category';

      return UssdCategory.fromJson(parsedJson).items;
    } else {
      throw UssdCodesCacheException();
    }
  }

  Future<String?> getHash() async {
    return _storage.getString(USSD_CODES_HASH);
  }

  Future<void> saveUssdCodes(List<UssdItem> items, String hash) async {
    final data = json.encode({
      'items': items.map((e) {
        if (e.type == 'code') {
          return (e as UssdCode).toJson();
        } else if (e.type == 'category') {
          return (e as UssdCategory).toJson();
        }
      }).toList()
    });

    _storage..setString(USSD_CODES_KEY, data)..setString(USSD_CODES_HASH, hash);
  }
}
