import 'package:ma_for_feip/catalog/models/main_category.dart';
import 'package:ma_for_feip/catalog/service/abstract_category_service.dart';

abstract class AbstractMainCategoryRepository {
  AbstractCategoryService service;

  AbstractMainCategoryRepository(this.service);

  Future<List<MainCategory>> getMainCategories();
}
