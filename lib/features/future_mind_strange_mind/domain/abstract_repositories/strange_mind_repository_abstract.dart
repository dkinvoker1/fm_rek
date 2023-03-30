import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure_abstract.dart';
import '../entities/strange_mind.dart';

abstract class StrangeMindRepositoryAbstract {
  Future<Either<FailureAbstract, List<StrangeMindEntity>>>
      getStrangeMindsList();
}