// Mocks generated by Mockito 5.4.0 from annotations
// in fm_rek/test/features/future_mind_mind_storage_mind/domain/use_cases/load_strange_minds_list_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:fm_rek/core/errors/failure_abstract.dart' as _i5;
import 'package:fm_rek/features/future_mind_strange_mind/domain/abstract_repositories/strange_mind_repository_abstract.dart'
    as _i3;
import 'package:fm_rek/features/future_mind_strange_mind/domain/entities/strange_mind.dart'
    as _i6;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [StrangeMindRepositoryAbstract].
///
/// See the documentation for Mockito's code generation for more information.
class MockStrangeMindRepositoryAbstract extends _i1.Mock
    implements _i3.StrangeMindRepositoryAbstract {
  MockStrangeMindRepositoryAbstract() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.FailureAbstract, List<_i6.StrangeMindEntity>>>
      getStrangeMindsList() => (super.noSuchMethod(
            Invocation.method(
              #getStrangeMindsList,
              [],
            ),
            returnValue: _i4.Future<
                    _i2.Either<_i5.FailureAbstract,
                        List<_i6.StrangeMindEntity>>>.value(
                _FakeEither_0<_i5.FailureAbstract, List<_i6.StrangeMindEntity>>(
              this,
              Invocation.method(
                #getStrangeMindsList,
                [],
              ),
            )),
          ) as _i4.Future<
              _i2.Either<_i5.FailureAbstract, List<_i6.StrangeMindEntity>>>);
}
