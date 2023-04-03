import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fm_rek/core/errors/exceptions.dart';
import 'package:fm_rek/core/errors/failures.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/data_sources/remote/strange_mind_remote_data_source_abstract.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/models/strange_mind_model.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/repositories/strange_mind_repository.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/entities/strange_mind_entity.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'strange_mind_repository_test.mocks.dart';

@GenerateMocks([StrangeMindRemoteDataSourceAbstract])
void main() {
  late MockStrangeMindRemoteDataSourceAbstract mockRemoteDataSource;
  late StrangeMindRepository repository;

  setUp(() {
    mockRemoteDataSource = MockStrangeMindRemoteDataSourceAbstract();
    repository = StrangeMindRepository(mockRemoteDataSource);
  });

  final tStrangeMindModelList = [
    StrangeMindModel(
      orderId: 1,
      title: 'title 1',
      description: 'description\thttps://usersearch.org/',
      image_url: 'image_url',
      modificationDate: DateTime(2000, 1, 1),
    ),
    StrangeMindModel(
      orderId: 0,
      title: 'title',
      description: 'description\thttps://usersearch.org/',
      image_url: 'image_url',
      modificationDate: DateTime(2000, 1, 1),
    )
  ];

  final tStrangeMindEntityList = [
    StrangeMindEntity(
      orderId: 0,
      title: 'title',
      description: 'description',
      detailsUrl: 'https://usersearch.org/',
      imageUrl: 'image_url',
      modificationDate: DateTime(2000, 1, 1),
    ),
    StrangeMindEntity(
      orderId: 1,
      title: 'title 1',
      description: 'description',
      detailsUrl: 'https://usersearch.org/',
      imageUrl: 'image_url',
      modificationDate: DateTime(2000, 1, 1),
    )
  ];

  test(
    'should return sorted List<StrangeMindEntity> from remoteDataSource',
    () async {
      //arrange
      when(mockRemoteDataSource.getStrangeMindsList())
          .thenAnswer((_) async => tStrangeMindModelList);
      //act
      final result = await repository.getStrangeMindsList();
      //assert
      verify(mockRemoteDataSource.getStrangeMindsList());
      verifyNoMoreInteractions(mockRemoteDataSource);
      expect(result.isRight(), true);
      expect(
        ilist(result.getOrElse(
          () => <StrangeMindEntity>[],
        )),
        ilist(tStrangeMindEntityList),
      );
    },
  );

  test(
    'should return ServerFailure when remoteDataSource throws an ServerException',
    () async {
      //arrange
      when(mockRemoteDataSource.getStrangeMindsList())
          .thenThrow(ServerException());
      //act
      final result = await repository.getStrangeMindsList();
      //assert
      verify(mockRemoteDataSource.getStrangeMindsList());
      verifyNoMoreInteractions(mockRemoteDataSource);
      expect(
        result,
        const Left(FailureAbstract.serverFailure()),
      );
    },
  );

  test(
    'should return ConnectionFailure when remoteDataSource throws an ConnectionException',
    () async {
      //arrange
      when(mockRemoteDataSource.getStrangeMindsList())
          .thenThrow(ConnectionException());
      //act
      final result = await repository.getStrangeMindsList();
      //assert
      verify(mockRemoteDataSource.getStrangeMindsList());
      verifyNoMoreInteractions(mockRemoteDataSource);
      expect(
        result,
        const Left(FailureAbstract.connectionFailure()),
      );
    },
  );
}
