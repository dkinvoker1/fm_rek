import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'features/future_mind_strange_mind/data/data_sources/remote/default_strange_mind_remote_data_source.dart';
import 'features/future_mind_strange_mind/data/data_sources/remote/strange_mind_remote_data_source.dart';
import 'features/future_mind_strange_mind/data/repositories/default_strange_mind_repository.dart';
import 'features/future_mind_strange_mind/domain/repositories/strange_mind_repository.dart';
import 'features/future_mind_strange_mind/domain/use_cases/load_strange_minds_list.dart';
import 'features/future_mind_strange_mind/presentation/pages/strange_mind_list_page/bloc/strange_mind_list_bloc.dart';

final sl = GetIt.instance;

void init() {
  //features
  //bloc
  _futureMindStrangeMindFeatureInit();

  //core

  //external
  sl.registerLazySingleton(
    () => Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 10),
      ),
    ),
  );
}

void _futureMindStrangeMindFeatureInit() {
  //bloc
  sl.registerFactory(
    () => StrangeMindListBloc(
      sl(),
    ),
  );

  //use cases
  sl.registerLazySingleton(
    () => LoadStrangeMindsList(
      sl(),
    ),
  );

  //repository
  sl.registerLazySingleton<StrangeMindRepository>(
    () => DefaultStrangeMindRepository(
      sl(),
    ),
  );

  //data sources
  sl.registerLazySingleton<StrangeMindRemoteDataSource>(
    () => DefaultStrangeMindRemoteDataSource(
      sl(),
    ),
  );
}
