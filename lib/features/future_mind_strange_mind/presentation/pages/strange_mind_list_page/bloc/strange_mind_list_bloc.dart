import 'package:bloc/bloc.dart';
import '../../../../../../core/domain/use_case.dart';
import '../../../../domain/entities/strange_mind_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/use_cases/load_strange_minds_list.dart';


part 'strange_mind_list_event.dart';
part 'strange_mind_list_state.dart';
part 'strange_mind_list_bloc.freezed.dart';

const String serverFailureString = 'Server Failure';
const String connectionFailureString = 'Connection Failure';

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
      (failure) => failure.when(
        serverFailure: (_) => emit(
          const StrangeMindListState.error(serverFailureString),
        ),
        connectionFailure: (_) => emit(
          const StrangeMindListState.error(connectionFailureString),
        ),
      ),
      (strangeMindList) => strangeMindList.isEmpty
          ? emit(const StrangeMindListState.loadedEmpty())
          : emit(StrangeMindListState.loaded(strangeMindList)),
    );
  }
}
