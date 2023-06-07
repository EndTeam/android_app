// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryDTO _$$_CategoryDTOFromJson(Map<String, dynamic> json) =>
    _$_CategoryDTO(
      id: json['id'] as int,
      category: json['category'] as String,
      mainCategoryId: json['main_category'] as int,
    );

Map<String, dynamic> _$$_CategoryDTOToJson(_$_CategoryDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'main_category': instance.mainCategoryId,
    };
