import 'package:flutter_test/flutter_test.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/models/strange_mind_model.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/entities/strange_mind_entity.dart';

void main() {
  final tStrangeMindModel = StrangeMindModel(
    orderId: 1,
    title: 'title',
    description: 'description\thttps://usersearch.org/',
    image_url: 'image_url',
    modificationDate: DateTime(2000, 1, 1),
  );

  final tStrangeMindEntity = StrangeMindEntity(
    orderId: 1,
    title: 'title',
    description: 'description',
    detailsUrl: 'https://usersearch.org/',
    imageUrl: 'image_url',
    modificationDate: DateTime(2000, 1, 1),
  );

  test(
    'fromModel',
    () {
      // act
      final result = StrangeMindEntity.fromModel(tStrangeMindModel);

      //assert
      expect(result, equals(tStrangeMindEntity));
    },
  );
}
