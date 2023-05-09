import 'package:ma_for_feip/products/mapper/color_mapper.dart';
import 'package:ma_for_feip/products/mapper/size_mapper.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
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
