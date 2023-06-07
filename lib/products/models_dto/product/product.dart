// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ma_for_feip/products/models_dto/brand/brand_dto.dart';
import 'package:ma_for_feip/products/models_dto/category/category_dto.dart';
import 'package:ma_for_feip/products/models_dto/image_color/image_color_dto.dart';
import 'package:ma_for_feip/products/models_dto/named_size/named_size.dart';

part 'product.freezed.dart';

part 'product.g.dart';

@freezed
class ProductModelDTO with _$ProductModelDTO {
  const factory ProductModelDTO({
    required final int id,
    required final String name,
    required final String article,
    @JsonKey(name: 'new') required final bool isNew,
    @JsonKey(name: 'sale') required final bool sale,
    required final double cost,
    @JsonKey(name: 'sale_cost') final double? saleCost,
    @JsonKey(name: 'image_color') required final List<ImageColorDTO> imageColor,
    required final List<NamedSizeDTO> size,
    required final String description,
    required final BrandDTO brand,
    required final CategoryDTO category,
    @JsonKey(name: 'is_favorite') required final bool isFavorite,
  }) = _ProductModelDTO;

  factory ProductModelDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductModelDTOFromJson(json);
}
