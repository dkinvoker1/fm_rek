import '../../models/strange_mind_model.dart';

abstract class StrangeMindRemoteDataSourceAbstract {
  Future<List<StrangeMindModel>> getStrangeMindsList();
}
