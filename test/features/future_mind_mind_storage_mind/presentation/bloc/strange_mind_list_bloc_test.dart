import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:fm_rek/core/domain/use_case_abstract.dart';
import 'package:fm_rek/core/errors/failures.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/entities/strange_mind_entity.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/use_cases/load_strange_minds_list.dart';
import 'package:fm_rek/features/future_mind_strange_mind/presentation/bloc/strange_mind_list_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'strange_mind_list_bloc_test.mocks.dart';

@GenerateMocks([LoadStrangeMindsList])
void main() {
  late MockLoadStrangeMindsList loadUseCase;
  late StrangeMindListBloc strangeMindListBloc;

  setUp(() {
    loadUseCase = MockLoadStrangeMindsList();
    strangeMindListBloc = StrangeMindListBloc(loadUseCase);
  });

  final tStrangeMindsList = [
    StrangeMindEntity(
        orderId: 1,
        title: 'title',
        description: 'description',
        detailsUrl: 'detailsUrl',
        imageUrl: 'imageUrl',
        modificationDate: DateTime(2000, 1, 1))
  ];

  void setUpMockLoadUseCaseSuccess() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => Right(tStrangeMindsList),
      );

  void setUpMockLoadUseCaseEmpty() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => const Right([]),
      );

  void setUpMockLoadUseCaseFailure() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => const Left(FailureAbstract.serverFailure()),
      );

  test(
    'should get data from use case',
    () async {
      // arrange
      setUpMockLoadUseCaseSuccess();

      // act
      strangeMindListBloc.add(const StrangeMindListEvent.load());
      await untilCalled(loadUseCase(any));

      // assert
      verify(loadUseCase(NoParams()));
    },
  );

  final expected = [
    const StrangeMindListState.initial(),
    const StrangeMindListState.loading(),
    StrangeMindListState.loaded(tStrangeMindsList),
  ];

  blocTest<StrangeMindListBloc, StrangeMindListState>(
    'emits [Loading, Loaded] when succesfull',
    build: () => strangeMindListBloc,
    setUp: setUpMockLoadUseCaseSuccess,
    act: (bloc) => bloc.add(const StrangeMindListEvent.load()),
    expect: () => [
      const StrangeMindListState.loading(),
      StrangeMindListState.loaded(tStrangeMindsList),
    ],
  );

  blocTest<StrangeMindListBloc, StrangeMindListState>(
    'emits [Loading, LoadedEmpty] when succesfull',
    build: () => strangeMindListBloc,
    setUp: setUpMockLoadUseCaseEmpty,
    act: (bloc) => bloc.add(const StrangeMindListEvent.load()),
    expect: () => [
      const StrangeMindListState.loading(),
      const StrangeMindListState.loadedEmpty(),
    ],
  );

  blocTest<StrangeMindListBloc, StrangeMindListState>(
    'emits [Loading, Error] when receive Failure',
    build: () => strangeMindListBloc,
    setUp: setUpMockLoadUseCaseFailure,
    act: (bloc) => bloc.add(const StrangeMindListEvent.load()),
    expect: () => [
      const StrangeMindListState.loading(),
      const StrangeMindListState.error(serverFailureString),
    ],
  );
}
