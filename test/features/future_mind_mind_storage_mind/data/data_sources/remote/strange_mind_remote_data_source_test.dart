import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fm_rek/core/data/future_mind_client/future_mind_client.dart';
import 'package:fm_rek/core/errors/exceptions.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/data_sources/remote/default_strange_mind_remote_data_source.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/models/strange_mind_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'strange_mind_remote_data_source_test.mocks.dart';

@GenerateMocks([FutureMindClient])
void main() {
  late MockFutureMindClient mockClient;
  late DefaultStrangeMindRemoteDataSource dataSource;

  setUp(() {
    mockClient = MockFutureMindClient();
    dataSource = DefaultStrangeMindRemoteDataSource(mockClient);
  });

  final tResponseData = [
    StrangeMindModel(
      description: "test description",
      image_url: "fake url",
      modificationDate: DateTime(2000, 1, 1),
      orderId: 0,
      title: "test title",
    ),
    StrangeMindModel(
      description: "test description",
      image_url: "fake url",
      modificationDate: DateTime(2000, 1, 1),
      orderId: 0,
      title: "test title",
    ),
  ];

  void setUpResponseCode200() {
    when(mockClient.getStrangeMindsList()).thenAnswer(
      (_) async => tResponseData,
    );
  }

  void setUpResponseSocketException() {
    when(mockClient.getStrangeMindsList()).thenThrow(
      DioError(
        requestOptions: RequestOptions(),
        error: const SocketException('noConnection'),
      ),
    );
  }

  void setUpResponseException() {
    when(mockClient.getStrangeMindsList())
        .thenThrow(Exception('an error ocured'));
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
        mockClient.getStrangeMindsList(),
      );

      verifyNoMoreInteractions(mockClient);
    },
  );

  test(
    'should return StrangeMindModelList when the response code is 200',
    () async {
      // arrange
      setUpResponseCode200();

      // act
      final result = await dataSource.getStrangeMindsList();
      // assert
      expect(result, equals(tResponseData));
    },
  );

  test(
    'should throw ConnectionException when response is dio error socketException',
    () async {
      // arrange
      setUpResponseSocketException();

      // act
      final call = dataSource.getStrangeMindsList;
      // assert
      expect(() => call(), throwsA(const TypeMatcher<ConnectionException>()));
    },
  );

  test(
    'should throw ServerException when the response is exception',
    () async {
      // arrange
      setUpResponseException();

      // act
      final call = dataSource.getStrangeMindsList;
      // assert
      expect(() => call(), throwsA(const TypeMatcher<ServerException>()));
    },
  );
}
