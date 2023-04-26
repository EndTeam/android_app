// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModelDTO _$$_ProductModelDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductModelDTO(
      name: json['name'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      isNew: json['isNew'] as bool,
      cost: json['cost'] as int,
      oldCost: json['oldCost'] as int?,
      colors: (json['colors'] as List<dynamic>)
          .map((e) => NamedColorDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      sizes: (json['sizes'] as List<dynamic>)
          .map((e) => NamedSizeDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: (json['description'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ProductModelDTOToJson(_$_ProductModelDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'images': instance.images,
      'tags': instance.tags,
      'isNew': instance.isNew,
      'cost': instance.cost,
      'oldCost': instance.oldCost,
      'colors': instance.colors,
      'sizes': instance.sizes,
      'description': instance.description,
    };
