import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:todo/app/app.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tUssdCodeFieldModel = UssdCodeField(
    name: 'telefono',
    type: 'phone_number',
  );

  group(
    '+ fromJson"\n ',
    () {
      test(
        '- Should return a valid model from JSON',
        () {
          // arrange
          final jsonMap = json.decode(
            fixture('ussd_code_field.json'),
          ) as Map<String, dynamic>;

          // act
          final result = UssdCodeField.fromJson(jsonMap);

          // assert
          expect(result, tUssdCodeFieldModel);
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
          final result = tUssdCodeFieldModel.toJson();

          final expectedMap = {
            'name': 'telefono',
            'type': 'phone_number',
          };

          // assert
          expect(result, expectedMap);
        },
      );
    },
  );
}
