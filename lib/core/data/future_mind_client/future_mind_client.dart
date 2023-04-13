import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../../features/future_mind_strange_mind/data/models/strange_mind_model.dart';

part 'future_mind_client.g.dart';

@RestApi()
abstract class FutureMindClient {
  factory FutureMindClient(Dio dio) = _FutureMindClient;

  @GET('/recruitment-task')
  Future<List<StrangeMindModel>> getStrangeMindsList();
}