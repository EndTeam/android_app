// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainCategoryDTO _$$_MainCategoryDTOFromJson(Map<String, dynamic> json) =>
    _$_MainCategoryDTO(
      id: json['id'] as int,
      name: json['main_category'] as String,
      category: (json['category'] as List<dynamic>)
          .map((e) => CategoryDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MainCategoryDTOToJson(_$_MainCategoryDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main_category': instance.name,
      'category': instance.category,
    };
