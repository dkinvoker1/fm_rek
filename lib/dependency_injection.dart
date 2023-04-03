import 'package:dio/dio.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/data_sources/remote/strange_mind_remote_data_source.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/data_sources/remote/strange_mind_remote_data_source_abstract.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/repositories/strange_mind_repository.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/abstract_repositories/strange_mind_repository_abstract.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/use_cases/load_strange_minds_list.dart';
import 'package:fm_rek/features/future_mind_strange_mind/presentation/bloc/strange_mind_list_bloc.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

void init() {
  //features
  //bloc
  _futureMindStrangeMindFeatureInit();

  //core

  //external
  di.registerLazySingleton(
    () => Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 10),
      ),
    ),
  );
}

void _futureMindStrangeMindFeatureInit() {
  //bloc
  di.registerFactory(
    () => StrangeMindListBloc(
      di(),
    ),
  );

  //use cases
  di.registerLazySingleton(
    () => LoadStrangeMindsList(
      di(),
    ),
  );

  //repository
  di.registerLazySingleton<StrangeMindRepositoryAbstract>(
    () => StrangeMindRepository(
      di(),
    ),
  );

  //data sources
  di
      .registerLazySingleton<StrangeMindRemoteDataSourceAbstract>(
    () => StrangeMindRemoteDataSource(
      di(),
    ),
  );
}
