import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:todo/app/app.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  final tUssdCategoryModel = UssdCategory(
    name: 'Adelantar Saldo',
    description: 'Recarga con un adelanto de saldo',
    icon: 'monetization_on',
    type: 'category',
    items: [
      UssdCode.fromJson(const {
        'name': '25 CUP',
        'description': r'Adelanta con $1.00 CUC de saldo',
        'icon': 'monetization_on',
        'type': 'code',
        'fields': [],
        'code': '*234*3*1*1#'
      }),
      UssdCode.fromJson(const {
        'name': '50 CUP',
        'description': r'Adelanta con $2.00 CUC de saldo',
        'icon': 'monetization_on',
        'type': 'code',
        'fields': [],
        'code': '*234*3*1*2#'
      })
    ],
  );

  group(
    '+ fromJson"\n ',
    () {
      test(
        '- Should return a valid model from JSON',
        () {
          // arrange
          final jsonMap = json.decode(fixture('ussd_category.json'))
              as Map<String, dynamic>;

          // act
          final result = UssdCategory.fromJson(jsonMap);

          // assert
          expect(result, tUssdCategoryModel);
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
          final result = tUssdCategoryModel.toJson();

          final expectedMap = {
            'name': 'Adelantar Saldo',
            'description': 'Recarga con un adelanto de saldo',
            'icon': 'monetization_on',
            'type': 'category',
            'items': [
              {
                'name': '25 CUP',
                'description': r'Adelanta con $1.00 CUC de saldo',
                'icon': 'monetization_on',
                'type': 'code',
                'fields': [],
                'code': '*234*3*1*1#'
              },
              {
                'name': '50 CUP',
                'description': r'Adelanta con $2.00 CUC de saldo',
                'icon': 'monetization_on',
                'type': 'code',
                'fields': [],
                'code': '*234*3*1*2#'
              }
            ]
          };

          // assert
          expect(result, expectedMap);
        },
      );
    },
  );
}
