import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:todo/app/app.dart';

@injectable
class UssdRemoteDatasource {
  const UssdRemoteDatasource(
    this._environment,
    this._http,
  );

  final AppEnvironment _environment;
  final HttpClient _http;

  Future<String> getHash() async {
    return _getData(_environment.ussdCodesHashRemote);
  }

  Future<List<UssdItem>> getUssdCodes() async {
    final jsonString = await _getData(_environment.ussdCodesRemote);
    final parsedJson = json.decode(jsonString) as Map<String, dynamic>;

    parsedJson['name'] = '';
    parsedJson['description'] = '';
    parsedJson['icon'] = '';
    parsedJson['type'] = 'category';

    return UssdCategory.fromJson(parsedJson).items;
  }

  Future<String> _getData(String url) {
    return _http.get<Map<String, dynamic>>(url).then(
      (response) {
        if (response.statusCode == 200) {
          return json.encode(response.data);
        } else {
          throw UssdCodesServerException(
            'Request failed: ${response.realUri}\n'
            'StatusCode: ${response.statusCode}\n'
            'Body: ${response.data}',
          );
        }
      },
    ).timeout(
      const Duration(seconds: 5),
      onTimeout: () => throw const UssdCodesServerException('Request timeout'),
    );
  }
}
