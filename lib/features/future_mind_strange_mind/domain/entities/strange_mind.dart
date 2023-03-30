import 'package:freezed_annotation/freezed_annotation.dart';

part 'strange_mind.freezed.dart';

@freezed
class StrangeMindEntity with _$StrangeMindEntity {
  factory StrangeMindEntity({
    required int orderId,
    required String title,
    required String description,
    required String detailsUrl,
    required String imageUrl,
    required DateTime modificationDate,
  }) = _StrangeMindEntity;
}
