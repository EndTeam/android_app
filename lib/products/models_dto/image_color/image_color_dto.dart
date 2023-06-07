// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ma_for_feip/products/models_dto/named_color/named_color.dart';

part 'image_color_dto.freezed.dart';

part 'image_color_dto.g.dart';

@freezed
class ImageColorDTO with _$ImageColorDTO {
  const factory ImageColorDTO({
    required final int id,
    @JsonKey(name: 'img_name') @Default('image') imgName,
    required final NamedColorDTO color,
    required final String image,
    required final String name,
    @JsonKey(name: 'product') @Default(0) int productId,
  }) = _ImageColorDTO;

  factory ImageColorDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageColorDTOFromJson(json);
}
