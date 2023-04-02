import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class FailureAbstract with _$FailureAbstract {
  const factory FailureAbstract.serverFailure({
    @Default([]) List properties,
  }) = _ServerFailure;

  const factory FailureAbstract.connectionFailure({
    @Default([]) List properties,
  }) = _ConnectionFailure;
}