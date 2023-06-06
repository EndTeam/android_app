import 'package:ma_for_feip/products/mapper/brand_mapper.dart';
import 'package:ma_for_feip/products/mapper/category_mapper.dart';
import 'package:ma_for_feip/products/mapper/color_mapper.dart';
import 'package:ma_for_feip/products/mapper/size_mapper.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/products/models_dto/named_color/named_color.dart';
import 'package:ma_for_feip/products/models_dto/product_model/product_model.dart';

class ProductMapper {
  static ProductModel fromSource(ProductModelDTO dto) {
    final colors = <NamedColorDTO>[];
    final images = <String>[];
    for (var i in dto.imageColor) {
      colors.add(i.color);
      images.add(i.image);
    }

    final tags = [];
    if (dto.isNew) {
      tags.add('NEW');
    }
    if (dto.sale) {
      tags.add('SALE');
    }

    return ProductModel(
      id: dto.id,
      name: dto.name,
      images: images.where((img) => img.isNotEmpty).toList(),
      tags: [
        dto.brand.name,
        dto.category.category,
        ...tags,
      ],
      isNew: dto.isNew,
      cost: dto.saleCost != null
          ? (dto.saleCost! * 100).toInt()
          : (dto.cost * 100).toInt(),
      oldCost: dto.saleCost != null ? (dto.cost * 100).toInt() : null,
      colors: colors.map((color) => ColorMapper.fromSource(color)).toList(),
      sizes: dto.size.map((size) => SizeMapper.fromSource(size)).toList(),
      description:
          dto.description.split('\n').where((desc) => desc.isNotEmpty).toList(),
      article: dto.article,
      brand: BrandMapper.fromSource(dto.brand),
      category: CategoryMapper.fromSource(dto.category),
      isFavorite: dto.isFavorite,
    );
  }
}
