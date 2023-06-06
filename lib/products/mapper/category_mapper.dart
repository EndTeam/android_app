import 'package:ma_for_feip/catalog/models/category.dart';
import 'package:ma_for_feip/products/models_dto/category/category_dto.dart';

class CategoryMapper {
  static Category fromSource(CategoryDTO dto) {
    return Category(dto.category, null, dto.id, dto.mainCategoryId);
  }
}
