part of 'strange_mind_list_bloc.dart';

@freezed
class StrangeMindListState with _$StrangeMindListState {
  const factory StrangeMindListState.initial() = _StrangeMindListInitial;
  const factory StrangeMindListState.loading() = _StrangeMindListLoading;
  const factory StrangeMindListState.loaded(
    List<StrangeMindEntity> strangeMindsList,
  ) = _StrangeMindListLoaded;
  const factory StrangeMindListState.loadedEmpty() = _StrangeMindListEmpty;
  const factory StrangeMindListState.error(String message) =
      _StrangeMindListError;
}
