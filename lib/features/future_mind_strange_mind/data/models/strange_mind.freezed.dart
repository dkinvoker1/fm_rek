// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strange_mind.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StrangeMindModel _$StrangeMindModelFromJson(Map<String, dynamic> json) {
  return _StrangeMindModel.fromJson(json);
}

/// @nodoc
mixin _$StrangeMindModel {
  int get orderId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image_url => throw _privateConstructorUsedError;
  DateTime get modificationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StrangeMindModelCopyWith<StrangeMindModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrangeMindModelCopyWith<$Res> {
  factory $StrangeMindModelCopyWith(
          StrangeMindModel value, $Res Function(StrangeMindModel) then) =
      _$StrangeMindModelCopyWithImpl<$Res, StrangeMindModel>;
  @useResult
  $Res call(
      {int orderId,
      String title,
      String description,
      String image_url,
      DateTime modificationDate});
}

/// @nodoc
class _$StrangeMindModelCopyWithImpl<$Res, $Val extends StrangeMindModel>
    implements $StrangeMindModelCopyWith<$Res> {
  _$StrangeMindModelCopyWithImpl(this._value, this._then);

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
    Object? image_url = null,
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
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
      modificationDate: null == modificationDate
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StrangeMindModelCopyWith<$Res>
    implements $StrangeMindModelCopyWith<$Res> {
  factory _$$_StrangeMindModelCopyWith(
          _$_StrangeMindModel value, $Res Function(_$_StrangeMindModel) then) =
      __$$_StrangeMindModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int orderId,
      String title,
      String description,
      String image_url,
      DateTime modificationDate});
}

/// @nodoc
class __$$_StrangeMindModelCopyWithImpl<$Res>
    extends _$StrangeMindModelCopyWithImpl<$Res, _$_StrangeMindModel>
    implements _$$_StrangeMindModelCopyWith<$Res> {
  __$$_StrangeMindModelCopyWithImpl(
      _$_StrangeMindModel _value, $Res Function(_$_StrangeMindModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? title = null,
    Object? description = null,
    Object? image_url = null,
    Object? modificationDate = null,
  }) {
    return _then(_$_StrangeMindModel(
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
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
      modificationDate: null == modificationDate
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StrangeMindModel implements _StrangeMindModel {
  _$_StrangeMindModel(
      {required this.orderId,
      required this.title,
      required this.description,
      required this.image_url,
      required this.modificationDate});

  factory _$_StrangeMindModel.fromJson(Map<String, dynamic> json) =>
      _$$_StrangeMindModelFromJson(json);

  @override
  final int orderId;
  @override
  final String title;
  @override
  final String description;
  @override
  final String image_url;
  @override
  final DateTime modificationDate;

  @override
  String toString() {
    return 'StrangeMindModel(orderId: $orderId, title: $title, description: $description, image_url: $image_url, modificationDate: $modificationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StrangeMindModel &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.modificationDate, modificationDate) ||
                other.modificationDate == modificationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, title, description, image_url, modificationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StrangeMindModelCopyWith<_$_StrangeMindModel> get copyWith =>
      __$$_StrangeMindModelCopyWithImpl<_$_StrangeMindModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StrangeMindModelToJson(
      this,
    );
  }
}

abstract class _StrangeMindModel implements StrangeMindModel {
  factory _StrangeMindModel(
      {required final int orderId,
      required final String title,
      required final String description,
      required final String image_url,
      required final DateTime modificationDate}) = _$_StrangeMindModel;

  factory _StrangeMindModel.fromJson(Map<String, dynamic> json) =
      _$_StrangeMindModel.fromJson;

  @override
  int get orderId;
  @override
  String get title;
  @override
  String get description;
  @override
  String get image_url;
  @override
  DateTime get modificationDate;
  @override
  @JsonKey(ignore: true)
  _$$_StrangeMindModelCopyWith<_$_StrangeMindModel> get copyWith =>
      throw _privateConstructorUsedError;
}
