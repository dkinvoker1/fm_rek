import 'package:dartz/dartz.dart';
import 'package:fm_rek/core/domain/use_case_abstract.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/entities/strange_mind_entity.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/use_cases/load_strange_minds_list.dart';
import 'package:mockito/mockito.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/abstract_repositories/strange_mind_repository_abstract.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'load_strange_minds_list_test.mocks.dart';

@GenerateMocks([StrangeMindRepositoryAbstract])
void main() {
  late LoadStrangeMindsList useCase;
  late MockStrangeMindRepositoryAbstract mockStrangeMindRepository;

  setUp(() {
    mockStrangeMindRepository = MockStrangeMindRepositoryAbstract();
    useCase = LoadStrangeMindsList(mockStrangeMindRepository);
  });

  final tStrangeMindsList = [
    StrangeMindEntity(
        orderId: 1,
        title: 'title',
        description: 'description',
        detailsUrl: 'detailsUrl',
        imageUrl: 'imageUrl',
        modificationDate: DateTime(2000, 1, 1))
  ];

  test(
    'should get List<StrangeMindEntity> from StrangeMindRepository',
    () async {
      //arrange
      when(mockStrangeMindRepository.getStrangeMindsList())
          .thenAnswer((_) async => Right(tStrangeMindsList));
      //act
      final result = await useCase(NoParams());
      //assert
      verify(mockStrangeMindRepository.getStrangeMindsList());
      verifyNoMoreInteractions(mockStrangeMindRepository);
      expect(result, Right(tStrangeMindsList));
    },
  );
}
