import 'package:ma_for_feip/products/models_dto/category/main_category_dto.dart';

abstract class AbstractCategoryService {
  Future<List<MainCategoryDTO>> getMainCategories();
}
