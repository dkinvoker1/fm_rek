// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strange_mind_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StrangeMindEntity {
  int get orderId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get detailsUrl => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  DateTime get modificationDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StrangeMindEntityCopyWith<StrangeMindEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrangeMindEntityCopyWith<$Res> {
  factory $StrangeMindEntityCopyWith(
          StrangeMindEntity value, $Res Function(StrangeMindEntity) then) =
      _$StrangeMindEntityCopyWithImpl<$Res, StrangeMindEntity>;
  @useResult
  $Res call(
      {int orderId,
      String title,
      String description,
      String detailsUrl,
      String imageUrl,
      DateTime modificationDate});
}

/// @nodoc
class _$StrangeMindEntityCopyWithImpl<$Res, $Val extends StrangeMindEntity>
    implements $StrangeMindEntityCopyWith<$Res> {
  _$StrangeMindEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? title = null,
    Object? description = null,
    Object? detailsUrl = null,
    Object? imageUrl = null,
    Object? modificationDate = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      detailsUrl: null == detailsUrl
          ? _value.detailsUrl
          : detailsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      modificationDate: null == modificationDate
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StrangeMindEntityCopyWith<$Res>
    implements $StrangeMindEntityCopyWith<$Res> {
  factory _$$_StrangeMindEntityCopyWith(_$_StrangeMindEntity value,
          $Res Function(_$_StrangeMindEntity) then) =
      __$$_StrangeMindEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int orderId,
      String title,
      String description,
      String detailsUrl,
      String imageUrl,
      DateTime modificationDate});
}

/// @nodoc
class __$$_StrangeMindEntityCopyWithImpl<$Res>
    extends _$StrangeMindEntityCopyWithImpl<$Res, _$_StrangeMindEntity>
    implements _$$_StrangeMindEntityCopyWith<$Res> {
  __$$_StrangeMindEntityCopyWithImpl(
      _$_StrangeMindEntity _value, $Res Function(_$_StrangeMindEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? title = null,
    Object? description = null,
    Object? detailsUrl = null,
    Object? imageUrl = null,
    Object? modificationDate = null,
  }) {
    return _then(_$_StrangeMindEntity(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      detailsUrl: null == detailsUrl
          ? _value.detailsUrl
          : detailsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      modificationDate: null == modificationDate
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_StrangeMindEntity implements _StrangeMindEntity {
  _$_StrangeMindEntity(
      {required this.orderId,
      required this.title,
      required this.description,
      required this.detailsUrl,
      required this.imageUrl,
      required this.modificationDate});

  @override
  final int orderId;
  @override
  final String title;
  @override
  final String description;
  @override
  final String detailsUrl;
  @override
  final String imageUrl;
  @override
  final DateTime modificationDate;

  @override
  String toString() {
    return 'StrangeMindEntity(orderId: $orderId, title: $title, description: $description, detailsUrl: $detailsUrl, imageUrl: $imageUrl, modificationDate: $modificationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StrangeMindEntity &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.detailsUrl, detailsUrl) ||
                other.detailsUrl == detailsUrl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.modificationDate, modificationDate) ||
                other.modificationDate == modificationDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, title, description,
      detailsUrl, imageUrl, modificationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StrangeMindEntityCopyWith<_$_StrangeMindEntity> get copyWith =>
      __$$_StrangeMindEntityCopyWithImpl<_$_StrangeMindEntity>(
          this, _$identity);
}

abstract class _StrangeMindEntity implements StrangeMindEntity {
  factory _StrangeMindEntity(
      {required final int orderId,
      required final String title,
      required final String description,
      required final String detailsUrl,
      required final String imageUrl,
      required final DateTime modificationDate}) = _$_StrangeMindEntity;

  @override
  int get orderId;
  @override
  String get title;
  @override
  String get description;
  @override
  String get detailsUrl;
  @override
  String get imageUrl;
  @override
  DateTime get modificationDate;
  @override
  @JsonKey(ignore: true)
  _$$_StrangeMindEntityCopyWith<_$_StrangeMindEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
