import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/strange_mind_model.dart';

part 'strange_mind_entity.freezed.dart';

@freezed
class StrangeMindEntity with _$StrangeMindEntity {
  const StrangeMindEntity._();

  factory StrangeMindEntity({
    required int orderId,
    required String title,
    required String description,
    required String detailsUrl,
    required String imageUrl,
    required DateTime modificationDate,
  }) = _StrangeMindEntity;

  factory StrangeMindEntity.fromModel(StrangeMindModel strangeMindModel) {
    var splitDescriptionFromModel = strangeMindModel.description.split('\t');
    var detailsUrlFromModel = splitDescriptionFromModel.removeLast();
    var descriptionFromModel = splitDescriptionFromModel.join('\t');

    return StrangeMindEntity(
      orderId: strangeMindModel.orderId,
      title: strangeMindModel.title,
      description: descriptionFromModel,
      detailsUrl: detailsUrlFromModel,
      imageUrl: strangeMindModel.image_url,
      modificationDate: strangeMindModel.modificationDate,
    );
  }
}
