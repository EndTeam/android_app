// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.freezed.dart';

part 'category_dto.g.dart';

@freezed
class CategoryDTO with _$CategoryDTO {
  const factory CategoryDTO({
    required final int id,
    required final String category,
    @JsonKey(name: 'main_category') required final int mainCategoryId,
  }) = _CategoryDTO;

  factory CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryDTOFromJson(json);
}
