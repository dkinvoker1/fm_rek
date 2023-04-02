import 'package:fm_rek/features/future_mind_strange_mind/data/data_sources/remote/strange_mind_remote_data_source_abstract.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/entities/strange_mind_entity.dart';

import 'package:fm_rek/core/errors/failures.dart';

import 'package:dartz/dartz.dart';

import '../../domain/abstract_repositories/strange_mind_repository_abstract.dart';

class StrangeMindRepository implements StrangeMindRepositoryAbstract {
  final StrangeMindRemoteDataSourceAbstract remoteDataSource;

  StrangeMindRepository(this.remoteDataSource);

  @override
  Future<Either<FailureAbstract, List<StrangeMindEntity>>>
      getStrangeMindsList() {
    // TODO: implement getStrangeMindsList
    throw UnimplementedError();
  }
}
