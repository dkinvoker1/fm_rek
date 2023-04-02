import 'dart:convert';

import 'package:fm_rek/core/errors/exceptions.dart';
import 'package:fm_rek/core/network_client/network_client_abstract.dart';

import '../../models/strange_mind_model.dart';
import 'strange_mind_remote_data_source_abstract.dart';

class StrangeMindRemoteDataSource
    implements StrangeMindRemoteDataSourceAbstract {
  final NetworkClientAbstract client;

  StrangeMindRemoteDataSource(this.client);

  @override
  Future<List<StrangeMindModel>> getStrangeMindsList() async {
    var response = await client.get(
      'https://recruitment-task.futuremind.dev/recruitment-task',
    );

    if (response.statusCode != 200) {
      throw ServerException();
    }

    var strangeMindModelList = (jsonDecode(response.data) as List)
        .map((e) => StrangeMindModel.fromJson(e))
        .toList();

    return strangeMindModelList;
  }
}
