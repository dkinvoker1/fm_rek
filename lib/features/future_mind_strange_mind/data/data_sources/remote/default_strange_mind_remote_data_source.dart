import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../../core/errors/exceptions.dart';
import '../../models/strange_mind_model.dart';
import 'strange_mind_remote_data_source.dart';

class DefaultStrangeMindRemoteDataSource
    implements StrangeMindRemoteDataSource {
  final Dio client;

  DefaultStrangeMindRemoteDataSource(this.client);

  @override
  Future<List<StrangeMindModel>> getStrangeMindsList() async {
    try {
      var response = await client.get(
        'https://recruitment-task.futuremind.dev/recruitment-task',
      );

      var strangeMindModelList = (response.data as List)
          .map((e) => StrangeMindModel.fromJson(e))
          .toList();

      return strangeMindModelList;
    } on DioError catch (error) {
      if (error.error is SocketException) {
        throw ConnectionException();
      }

      throw ServerException();
    } catch (exception) {
      throw ServerException();
    }
  }
}
