import 'package:bloc/bloc.dart';
import 'package:fm_rek/core/domain/use_case_abstract.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/entities/strange_mind_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/use_cases/load_strange_minds_list.dart';

part 'strange_mind_list_event.dart';
part 'strange_mind_list_state.dart';
part 'strange_mind_list_bloc.freezed.dart';

const String serverFailureString = 'Server Failure';
const String connectionFailureString = 'Connection Failure';
const String unknownFailureString = 'Unknown Failure';

class StrangeMindListBloc
    extends Bloc<StrangeMindListEvent, StrangeMindListState> {
  final LoadStrangeMindsList loadStrangeMind;

  StrangeMindListBloc(this.loadStrangeMind)
      : super(const StrangeMindListState.initial()) {
    on<_Load>(_loadHandle);
  }

  Future<void> _loadHandle(event, emit) async {
    emit(const StrangeMindListState.loading());

    var strangeMindEither = await loadStrangeMind(NoParams());

    strangeMindEither.fold(
      (failure) => failure.maybeWhen(
        serverFailure: (_) => emit(
          const StrangeMindListState.error(serverFailureString),
        ),
        connectionFailure: (_) => emit(
          const StrangeMindListState.error(connectionFailureString),
        ),
        orElse: () => emit(
          const StrangeMindListState.error(unknownFailureString),
        ),
      ),
      (strangeMindList) => strangeMindList.isEmpty
          ? emit(const StrangeMindListState.loadedEmpty())
          : emit(StrangeMindListState.loaded(strangeMindList)),
    );
  }
}
