import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ma_for_feip/products/models_dto/named_color/named_color.dart';
import 'package:ma_for_feip/products/models_dto/named_size/named_size.dart';

part 'product_model.freezed.dart';

part 'product_model.g.dart';

@freezed
class ProductModelDTO with _$ProductModelDTO {
  const factory ProductModelDTO({
    required final String name,
    required final List<String> images,
    required final List<String> tags,
    required final bool isNew,
    required final int cost,
    required final int? oldCost,
    required final List<NamedColorDTO> colors,
    required final List<NamedSizeDTO> sizes,
    required final List<String> description,
  }) = _ProductModelDTO;

  factory ProductModelDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductModelDTOFromJson(json);
}
