import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/strange_mind_entity.dart';
import '../../domain/repositories/strange_mind_repository.dart';
import '../data_sources/remote/strange_mind_remote_data_source.dart';

class DefaultStrangeMindRepository implements StrangeMindRepository {
  final StrangeMindRemoteDataSource remoteDataSource;

  DefaultStrangeMindRepository(this.remoteDataSource);

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

      strangeMindEntityList.sort((a, b) => a.orderId.compareTo(b.orderId));

      return Right(strangeMindEntityList);
    } on ConnectionException {
      return const Left(FailureAbstract.connectionFailure());
    } on ServerException {
      return const Left(FailureAbstract.serverFailure());
    }
  }
}
