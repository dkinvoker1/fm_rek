import 'package:dartz/dartz.dart';

import '../../../../core/domain/use_case_abstract.dart';
import '../../../../core/errors/failure_abstract.dart';
import '../abstract_repositories/strange_mind_repository_abstract.dart';
import '../entities/strange_mind.dart';

class LoadStrangeMindsList
    implements UseCaseAbstract<List<StrangeMindEntity>, NoParams> {
  final StrangeMindRepositoryAbstract repository;

  LoadStrangeMindsList(this.repository);

  @override
  Future<Either<FailureAbstract, List<StrangeMindEntity>>> call(
      NoParams noParams) {
    return repository.getStrangeMindsList();
  }
}
