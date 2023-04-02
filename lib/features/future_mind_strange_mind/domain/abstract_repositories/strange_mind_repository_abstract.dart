import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/strange_mind_entity.dart';

abstract class StrangeMindRepositoryAbstract {
  Future<Either<FailureAbstract, List<StrangeMindEntity>>>
      getStrangeMindsList();
}