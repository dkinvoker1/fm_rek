import 'package:freezed_annotation/freezed_annotation.dart';

part 'strange_mind.freezed.dart';
part 'strange_mind.g.dart';

@freezed
class StrangeMindModel with _$StrangeMindModel {
  factory StrangeMindModel({
    required int orderId,
    required String title,
    required String description,
    required String image_url,
    required DateTime modificationDate,
  }) = _StrangeMindModel;

  factory StrangeMindModel.fromJson(Map<String, Object?> json) =>
      _$StrangeMindModelFromJson(json);
}
