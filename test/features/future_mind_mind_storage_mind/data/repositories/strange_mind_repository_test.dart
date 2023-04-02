import 'package:flutter_test/flutter_test.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/data_sources/remote/strange_mind_remote_data_source_abstract.dart';
import 'package:fm_rek/features/future_mind_strange_mind/data/repositories/strange_mind_repository.dart';
import 'package:mockito/annotations.dart';

import 'strange_mind_repository_test.mocks.dart';

@GenerateMocks([StrangeMindRemoteDataSourceAbstract])
void main() {
  late MockStrangeMindRemoteDataSourceAbstract mockRemoteDataSource;
  late StrangeMindRepository repository;

  setUp(() {
    mockRemoteDataSource = MockStrangeMindRemoteDataSourceAbstract();
    repository = StrangeMindRepository(mockRemoteDataSource);
  });
}
