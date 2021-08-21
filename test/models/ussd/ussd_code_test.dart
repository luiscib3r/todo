import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:todo/app/app.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tUssdCodeModel = UssdCode(
    name: 'Transferir Saldo',
    description: 'Transfiere tu saldo',
    icon: 'mobile_screen_share',
    type: 'code',
    code: '*234*1*{telefono}*{clave}*{cantidad}#',
    fields: [
      UssdCodeField(
        name: 'telefono',
        type: 'phone_number',
      ),
      UssdCodeField(
        name: 'cantidad',
        type: 'money',
      ),
      UssdCodeField(
        name: 'clave',
        type: 'key_number',
      )
    ],
  );

  group(
    '+ fromJson"\n ',
    () {
      test(
        '- Should return a valid model from JSON',
        () {
          // arrange
          final jsonMap = json.decode(
            fixture('ussd_code.json'),
          ) as Map<String, dynamic>;

          // act
          final result = UssdCode.fromJson(jsonMap);

          // assert
          expect(result, tUssdCodeModel);
        },
      );
    },
  );

  group(
    'toJson',
    () {
      test(
        'Should return a JSON map containing the poper data',
        () {
          // act
          final result = tUssdCodeModel.toJson();

          final expectedMap = {
            'name': 'Transferir Saldo',
            'description': 'Transfiere tu saldo',
            'icon': 'mobile_screen_share',
            'type': 'code',
            'fields': [
              {'name': 'telefono', 'type': 'phone_number'},
              {'name': 'cantidad', 'type': 'money'},
              {'name': 'clave', 'type': 'key_number'}
            ],
            'code': '*234*1*{telefono}*{clave}*{cantidad}#'
          };

          // assert
          expect(result, expectedMap);
        },
      );
    },
  );
}
