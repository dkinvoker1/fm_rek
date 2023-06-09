import 'package:freezed_annotation/freezed_annotation.dart';

part 'strange_mind_model.freezed.dart';
part 'strange_mind_model.g.dart';

@freezed
class StrangeMindModel with _$StrangeMindModel {
  factory StrangeMindModel({
    required int orderId,
    required String title,
    required String description,
    // ignore: non_constant_identifier_names
    required String image_url,
    required DateTime modificationDate,
  }) = _StrangeMindModel;

  factory StrangeMindModel.fromJson(Map<String, Object?> json) =>
      _$StrangeMindModelFromJson(json);
}
