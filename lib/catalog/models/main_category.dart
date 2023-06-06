import 'package:flutter/foundation.dart' as im;
import 'package:ma_for_feip/catalog/models/category.dart';

@im.immutable
class MainCategory {
  final int id;
  final String name;
  final List<Category> categories;

  const MainCategory({
    required this.id,
    required this.name,
    required this.categories,
  });
}
