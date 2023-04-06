import 'package:dartz/dartz.dart';

import '../../../../core/domain/use_case.dart';
import '../../../../core/errors/failures.dart';
import '../entities/strange_mind_entity.dart';
import '../repositories/strange_mind_repository.dart';

class LoadStrangeMindsList
    implements UseCase<List<StrangeMindEntity>, NoParams> {
  final StrangeMindRepository repository;

  LoadStrangeMindsList(this.repository);

  @override
  Future<Either<FailureAbstract, List<StrangeMindEntity>>> call(
      NoParams noParams) {
    return repository.getStrangeMindsList();
  }
}
