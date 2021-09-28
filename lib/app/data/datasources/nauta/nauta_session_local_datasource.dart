import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/app/app.dart';

const NAUTA_SESSION_KEY = 'NAUTA_SESSION';

@injectable
class NautaSessionLocalDataSource {
  NautaSessionLocalDataSource(this._storage);

  final SharedPreferences _storage;

  Future<void> saveSession(NautaSession session) async {
    final data = json.encode(session.toJson());

    await _storage.setString(NAUTA_SESSION_KEY, data);
  }

  Future<NautaSession?> getSession() async {
    final jsonString = _storage.getString(NAUTA_SESSION_KEY);

    if (jsonString != null) {
      final parsedJson = await parseJson(jsonString);

      return NautaSession.fromJson(parsedJson);
    }
  }
}
