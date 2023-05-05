import 'package:flutter/painting.dart';
import 'package:ma_for_feip/products/models/named_color.dart';
import 'package:ma_for_feip/products/models/named_size.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/products/models_dto/named_color/named_color.dart';
import 'package:ma_for_feip/products/models_dto/named_size/named_size.dart';
import 'package:ma_for_feip/products/models_dto/product_model/product_model.dart';

class ProductMapper {
  static ProductModel fromSource(ProductModelDTO dto) {
    return ProductModel(
      id: dto.id,
      name: dto.name,
      images: dto.images.where((img) => img.isNotEmpty).toList(),
      tags: dto.tags.where((tag) => tag.isNotEmpty).toList(),
      isNew: dto.isNew,
      cost: dto.cost,
      oldCost: dto.oldCost,
      colors: dto.colors.map((color) => ColorMapper.fromSource(color)).toList(),
      sizes: dto.sizes.map((size) => SizeMapper.fromSource(size)).toList(),
      description: dto.description.where((desc) => desc.isNotEmpty).toList(),
    );
  }
}

class ColorMapper {
  static NamedColor fromSource(NamedColorDTO dto) {
    return NamedColor(Color(dto.color), dto.label);
  }
}

class SizeMapper {
  static NamedSize fromSource(NamedSizeDTO dto) {
    return NamedSize.fromStringSize(dto.label);
  }
}
