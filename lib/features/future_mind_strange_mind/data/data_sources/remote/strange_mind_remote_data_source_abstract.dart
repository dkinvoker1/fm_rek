import 'package:fm_rek/features/future_mind_strange_mind/data/models/strange_mind_model.dart';

abstract class StrangeMindRemoteDataSourceAbstract {
  Future<List<StrangeMindModel>> getStrangeMindsList();
}
