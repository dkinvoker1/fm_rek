import 'dart:io';

import 'package:dio/dio.dart';
import '../../../../../core/data/future_mind_client/future_mind_client.dart';

import '../../../../../core/errors/exceptions.dart';
import '../../models/strange_mind_model.dart';
import 'strange_mind_remote_data_source.dart';

class DefaultStrangeMindRemoteDataSource
    implements StrangeMindRemoteDataSource {
  final FutureMindClient client;

  DefaultStrangeMindRemoteDataSource(this.client);

  @override
  Future<List<StrangeMindModel>> getStrangeMindsList() async {
    try {
      return await client.getStrangeMindsList();
    } catch (error) {
      if (error is DioError && error.error is SocketException) {
        throw ConnectionException();
      }

      throw ServerException();
    }
  }
}
