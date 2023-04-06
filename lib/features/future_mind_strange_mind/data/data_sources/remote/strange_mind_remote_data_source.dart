import '../../models/strange_mind_model.dart';

abstract class StrangeMindRemoteDataSource {
  Future<List<StrangeMindModel>> getStrangeMindsList();
}
