import '../data_sources/remote/strange_mind_remote_data_source_abstract.dart';
import '../../domain/entities/strange_mind_entity.dart';

import '../../../../core/errors/failures.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../domain/abstract_repositories/strange_mind_repository_abstract.dart';

class StrangeMindRepository implements StrangeMindRepositoryAbstract {
  final StrangeMindRemoteDataSourceAbstract remoteDataSource;

  StrangeMindRepository(this.remoteDataSource);

  @override
  Future<Either<FailureAbstract, List<StrangeMindEntity>>>
      getStrangeMindsList() async {
    try {
      var strangeMindModelList = await remoteDataSource.getStrangeMindsList();

      var strangeMindEntityList = strangeMindModelList
          .map(
            (e) => StrangeMindEntity.fromModel(e),
          )
          .toList();

      return Right(strangeMindEntityList);
    } on ConnectionException {
      return const Left(FailureAbstract.connectionFailure());
    } on ServerException {
      return const Left(FailureAbstract.serverFailure());
    }
  }
}
