import 'dart:convert';

import 'package:fm_rek/features/future_mind_strange_mind/data/models/strange_mind.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/jsons/json_reader.dart';

void main() {
  final tStrangeMindModel = StrangeMindModel(
    orderId: 0,
    title: 'test title',
    description: 'test description',
    image_url: 'fake url',
    modificationDate: DateTime(2000, 1, 1),
  );

  test(
    'from Json',
    () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(jsonFixture('strange_mind.json'));
      // act
      final result = StrangeMindModel.fromJson(jsonMap);
      // assert
      expect(result, tStrangeMindModel);
    },
  );

  test(
    'to Json',
    () async {
      // act
      final result = tStrangeMindModel.toJson();
      // assert
      final expectedJsonMap = {
        'orderId': 0,
        'title': 'test title',
        'description': 'test description',
        'image_url': 'fake url',
        'modificationDate': '2000-01-01T00:00:00.000',
      };

      expect(result, expectedJsonMap);
    },
  );
}
