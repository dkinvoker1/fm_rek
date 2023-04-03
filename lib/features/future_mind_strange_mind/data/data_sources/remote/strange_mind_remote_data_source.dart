import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fm_rek/core/errors/exceptions.dart';

import '../../models/strange_mind_model.dart';
import 'strange_mind_remote_data_source_abstract.dart';

class StrangeMindRemoteDataSource
    implements StrangeMindRemoteDataSourceAbstract {
  final Dio client;

  StrangeMindRemoteDataSource(this.client);

  @override
  Future<List<StrangeMindModel>> getStrangeMindsList() async {
    try {
      var response = await client.get(
        'https://recruitment-task.futuremind.dev/recruitment-task',
      );

      if (response.statusCode != 200) {
        throw ServerException();
      }

      var strangeMindModelList = (response.data as List)
          .map((e) => StrangeMindModel.fromJson(e))
          .toList();

      return strangeMindModelList;
    } catch (e) {
      throw ConnectionException();
    }
  }
}
