// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModelDTO _$$_ProductModelDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductModelDTO(
      id: json['id'] as int,
      name: json['name'] as String,
      article: json['article'] as String,
      isNew: json['new'] as bool,
      sale: json['sale'] as bool,
      cost: (json['cost'] as num).toDouble(),
      saleCost: (json['sale_cost'] as num?)?.toDouble(),
      imageColor: (json['image_color'] as List<dynamic>)
          .map((e) => ImageColorDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      size: (json['size'] as List<dynamic>)
          .map((e) => NamedSizeDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
      brand: BrandDTO.fromJson(json['brand'] as Map<String, dynamic>),
      category: CategoryDTO.fromJson(json['category'] as Map<String, dynamic>),
      isFavorite: json['is_favorite'] as bool,
    );

Map<String, dynamic> _$$_ProductModelDTOToJson(_$_ProductModelDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'article': instance.article,
      'new': instance.isNew,
      'sale': instance.sale,
      'cost': instance.cost,
      'sale_cost': instance.saleCost,
      'image_color': instance.imageColor,
      'size': instance.size,
      'description': instance.description,
      'brand': instance.brand,
      'category': instance.category,
      'is_favorite': instance.isFavorite,
    };
