import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../errors/failures.dart';

part 'use_case_abstract.freezed.dart';

abstract class UseCaseAbstract<Type, Params> {
  Future<Either<FailureAbstract, Type>> call(Params params);
}

@freezed
class NoParams with _$NoParams {
  factory NoParams() = _NoParams;
}
