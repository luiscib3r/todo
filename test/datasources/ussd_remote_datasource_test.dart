import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo/app/app.dart';

void main() {
  late UssdRemoteDatasource datasource;
  late HttpClient http;
  late AppEnvironment environment;

  setUp(() {
    environment = AppEnvironmentProd();
    http = HttpClient();
    datasource = UssdRemoteDatasource(
      environment,
      http,
    );
  });

  test('Get HASH', () async {
    final result = await datasource.getHash();

    debugPrint(result.toString());

    expect(result.isNotEmpty, true);
  });

  test('Get Codes', () async {
    final result = await datasource.getUssdCodes();

    debugPrint(result.toString());

    expect(result.isNotEmpty, true);
  });
}
