// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_color_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageColorDTO _$$_ImageColorDTOFromJson(Map<String, dynamic> json) =>
    _$_ImageColorDTO(
      id: json['id'] as int,
      imgName: json['img_name'] ?? 'image',
      color: NamedColorDTO.fromJson(json['color'] as Map<String, dynamic>),
      image: json['image'] as String,
      name: json['name'] as String,
      productId: json['product'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ImageColorDTOToJson(_$_ImageColorDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img_name': instance.imgName,
      'color': instance.color,
      'image': instance.image,
      'name': instance.name,
      'product': instance.productId,
    };
