import 'package:ma_for_feip/catalog/models/main_category.dart';
import 'package:ma_for_feip/catalog/repository/abstract_repository.dart';
import 'package:ma_for_feip/products/mapper/category_mapper.dart';

class MainCategoryRepository extends AbstractMainCategoryRepository {
  MainCategoryRepository(super.serivce);

  @override
  Future<List<MainCategory>> getMainCategories() async {
    final cats = await service.getMainCategories();
    return cats
        .map(
          (e) => MainCategory(
            id: e.id,
            name: e.name,
            categories: e.category.map((e) => CategoryMapper.fromSource(e)).toList(),
          ),
        )
        .toList();
  }
}
