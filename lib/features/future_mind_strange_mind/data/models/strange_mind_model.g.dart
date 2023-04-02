// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strange_mind_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StrangeMindModel _$$_StrangeMindModelFromJson(Map<String, dynamic> json) =>
    _$_StrangeMindModel(
      orderId: json['orderId'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      image_url: json['image_url'] as String,
      modificationDate: DateTime.parse(json['modificationDate'] as String),
    );

Map<String, dynamic> _$$_StrangeMindModelToJson(_$_StrangeMindModel instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'title': instance.title,
      'description': instance.description,
      'image_url': instance.image_url,
      'modificationDate': instance.modificationDate.toIso8601String(),
    };
