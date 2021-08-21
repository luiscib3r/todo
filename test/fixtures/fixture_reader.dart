import 'dart:convert';
import 'dart:io';

import 'package:todo/app/app.dart';

String fixture(String name) => File('test/fixtures/$name').readAsStringSync();

String fixtureUssdCodes() => File('config/ussd_codes.json').readAsStringSync();

List<UssdItem> fixtureUssdCodesAsListUssdItem() {
  final jsonString = File('config/ussd_codes.json').readAsStringSync();
  final parsedJson = json.decode(jsonString) as Map<String, dynamic>;

  parsedJson['name'] = '';
  parsedJson['description'] = '';
  parsedJson['icon'] = '';
  parsedJson['type'] = 'category';

  return UssdCategory.fromJson(parsedJson).items;
}
