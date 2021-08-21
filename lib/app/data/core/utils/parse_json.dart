import 'dart:convert';

import 'package:flutter/foundation.dart';

Future<Map<String, dynamic>> parseJson(String text) {
  return compute(_parseAndDecode, text);
}

Map<String, dynamic> _parseAndDecode(String response) {
  return json.decode(
    response,
  ) as Map<String, dynamic>;
}
