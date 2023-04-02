import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fm_rek/core/errors/exceptions.dart';
import 'package:fm_rek/core/errors/failures.dart';
import 'package:fm_rek/core/network_client/network_client_abstract.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/data_sources/remote/strange_mind_remote_data_source.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/data_sources/remote/strange_mind_remote_data_source_abstract.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/models/strange_mind_model.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/repositories/strange_mind_repository.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/entities/strange_mind_entity.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../../fixtures/jsons/json_reader.dart';
import 'strange_mind_remote_data_source_test.mocks.dart';

@GenerateMocks([NetworkClientAbstract])
void main() {
  late MockNetworkClientAbstract mockClient;
  late StrangeMindRemoteDataSource dataSource;

  setUp(() {
    mockClient = MockNetworkClientAbstract();
    dataSource = StrangeMindRemoteDataSource(mockClient);
  });

  void setUpResponseCode200() {
    when(mockClient.get(any)).thenAnswer(
      (_) async => Response(
        requestOptions: RequestOptions(),
        data: jsonFixture('strange_mind_list.json'),
        statusCode: 200,
      ),
    );
  }

  void setUpResponseCode404() {
    when(mockClient.get(any)).thenAnswer(
      (_) async => Response(
        requestOptions: RequestOptions(),
        data: 'sth happened',
        statusCode: 404,
      ),
    );
  }

  test(
    'should preform a GET request on a URL https://recruitment-task.futuremind.dev/recruitment-task',
    () async {
      //arrange
      setUpResponseCode200();
      //act
      dataSource.getStrangeMindsList();
      //assert
      verify(
        mockClient.get(
          'https://recruitment-task.futuremind.dev/recruitment-task',
        ),
      );

      verifyNoMoreInteractions(mockClient);
    },
  );

  test(
    'should return StrangeMindModelList when the response code is 200',
    () async {
      // arrange
      setUpResponseCode200();

      var tStrangeMindJson = json.decode(jsonFixture('strange_mind_list.json'));
      var tStrangeMindModelList = (tStrangeMindJson as List).map(
        (e) => StrangeMindModel.fromJson(e),
      );

      // act
      final result = await dataSource.getStrangeMindsList();
      // assert
      expect(result, equals(tStrangeMindModelList));
    },
  );

  test(
    'should throw ServerException when the response code is 404 or other',
    () async {
      // arrange
      setUpResponseCode404();

      // act
      final call = dataSource.getStrangeMindsList;
      // assert
      expect(() => call(), throwsA(const TypeMatcher<ServerException>()));
    },
  );
}
