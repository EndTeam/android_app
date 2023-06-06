// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ma_for_feip/products/models_dto/category/category_dto.dart';

part 'main_category_dto.freezed.dart';

part 'main_category_dto.g.dart';

@freezed
class MainCategoryDTO with _$MainCategoryDTO {
  const factory MainCategoryDTO({
    required final int id,
    @JsonKey(name: 'main_category') required final String name,
    required final List<CategoryDTO> category,
  }) = _MainCategoryDTO;

  factory MainCategoryDTO.fromJson(Map<String, dynamic> json) => _$MainCategoryDTOFromJson(json);
}