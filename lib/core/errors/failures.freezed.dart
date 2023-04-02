// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FailureAbstract {
  List<dynamic> get properties => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> properties) serverFailure,
    required TResult Function(List<dynamic> properties) connectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> properties)? serverFailure,
    TResult? Function(List<dynamic> properties)? connectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> properties)? serverFailure,
    TResult Function(List<dynamic> properties)? connectionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ConnectionFailure value) connectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureAbstractCopyWith<FailureAbstract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureAbstractCopyWith<$Res> {
  factory $FailureAbstractCopyWith(
          FailureAbstract value, $Res Function(FailureAbstract) then) =
      _$FailureAbstractCopyWithImpl<$Res, FailureAbstract>;
  @useResult
  $Res call({List<dynamic> properties});
}

/// @nodoc
class _$FailureAbstractCopyWithImpl<$Res, $Val extends FailureAbstract>
    implements $FailureAbstractCopyWith<$Res> {
  _$FailureAbstractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? properties = null,
  }) {
    return _then(_value.copyWith(
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerFailureCopyWith<$Res>
    implements $FailureAbstractCopyWith<$Res> {
  factory _$$_ServerFailureCopyWith(
          _$_ServerFailure value, $Res Function(_$_ServerFailure) then) =
      __$$_ServerFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> properties});
}

/// @nodoc
class __$$_ServerFailureCopyWithImpl<$Res>
    extends _$FailureAbstractCopyWithImpl<$Res, _$_ServerFailure>
    implements _$$_ServerFailureCopyWith<$Res> {
  __$$_ServerFailureCopyWithImpl(
      _$_ServerFailure _value, $Res Function(_$_ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? properties = null,
  }) {
    return _then(_$_ServerFailure(
      properties: null == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure({final List<dynamic> properties = const []})
      : _properties = properties;

  final List<dynamic> _properties;
  @override
  @JsonKey()
  List<dynamic> get properties {
    if (_properties is EqualUnmodifiableListView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_properties);
  }

  @override
  String toString() {
    return 'FailureAbstract.serverFailure(properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerFailure &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_properties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerFailureCopyWith<_$_ServerFailure> get copyWith =>
      __$$_ServerFailureCopyWithImpl<_$_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> properties) serverFailure,
    required TResult Function(List<dynamic> properties) connectionFailure,
  }) {
    return serverFailure(properties);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> properties)? serverFailure,
    TResult? Function(List<dynamic> properties)? connectionFailure,
  }) {
    return serverFailure?.call(properties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> properties)? serverFailure,
    TResult Function(List<dynamic> properties)? connectionFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(properties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ConnectionFailure value) connectionFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements FailureAbstract {
  const factory _ServerFailure({final List<dynamic> properties}) =
      _$_ServerFailure;

  @override
  List<dynamic> get properties;
  @override
  @JsonKey(ignore: true)
  _$$_ServerFailureCopyWith<_$_ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConnectionFailureCopyWith<$Res>
    implements $FailureAbstractCopyWith<$Res> {
  factory _$$_ConnectionFailureCopyWith(_$_ConnectionFailure value,
          $Res Function(_$_ConnectionFailure) then) =
      __$$_ConnectionFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> properties});
}

/// @nodoc
class __$$_ConnectionFailureCopyWithImpl<$Res>
    extends _$FailureAbstractCopyWithImpl<$Res, _$_ConnectionFailure>
    implements _$$_ConnectionFailureCopyWith<$Res> {
  __$$_ConnectionFailureCopyWithImpl(
      _$_ConnectionFailure _value, $Res Function(_$_ConnectionFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? properties = null,
  }) {
    return _then(_$_ConnectionFailure(
      properties: null == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_ConnectionFailure implements _ConnectionFailure {
  const _$_ConnectionFailure({final List<dynamic> properties = const []})
      : _properties = properties;

  final List<dynamic> _properties;
  @override
  @JsonKey()
  List<dynamic> get properties {
    if (_properties is EqualUnmodifiableListView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_properties);
  }

  @override
  String toString() {
    return 'FailureAbstract.connectionFailure(properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectionFailure &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_properties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectionFailureCopyWith<_$_ConnectionFailure> get copyWith =>
      __$$_ConnectionFailureCopyWithImpl<_$_ConnectionFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> properties) serverFailure,
    required TResult Function(List<dynamic> properties) connectionFailure,
  }) {
    return connectionFailure(properties);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> properties)? serverFailure,
    TResult? Function(List<dynamic> properties)? connectionFailure,
  }) {
    return connectionFailure?.call(properties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> properties)? serverFailure,
    TResult Function(List<dynamic> properties)? connectionFailure,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(properties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ConnectionFailure value) connectionFailure,
  }) {
    return connectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
  }) {
    return connectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(this);
    }
    return orElse();
  }
}

abstract class _ConnectionFailure implements FailureAbstract {
  const factory _ConnectionFailure({final List<dynamic> properties}) =
      _$_ConnectionFailure;

  @override
  List<dynamic> get properties;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectionFailureCopyWith<_$_ConnectionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
