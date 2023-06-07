import 'package:ma_for_feip/catalog/models/category.dart';
import 'package:ma_for_feip/products/models/brand.dart';
import 'package:ma_for_feip/products/models/named_color.dart';
import 'package:ma_for_feip/products/models/named_size.dart';

class ProductModel {
  final int id;
  final String name;
  final String article;
  final Brand brand;
  final Category category;
  final List<String> images;
  final List<String> tags;
  final bool isNew;
  final int cost;
  final int? oldCost;
  final List<NamedColor> colors;
  final List<NamedSize> sizes;
  final List<String> description;
  final bool isFavorite;

  ProductModel({
    required this.id,
    required this.name,
    required this.images,
    required this.tags,
    required this.isNew,
    required this.cost,
    required this.oldCost,
    required this.colors,
    required this.sizes,
    required this.description,
    required this.article,
    required this.brand,
    required this.category,
    required this.isFavorite,
  });
}
