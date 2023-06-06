import 'package:dio/dio.dart';
import 'package:ma_for_feip/catalog/service/abstract_category_service.dart';
import 'package:ma_for_feip/products/models_dto/category/main_category_dto.dart';

class CategoryService extends AbstractCategoryService {
  final Dio dio;

  CategoryService(this.dio);

  @override
  Future<List<MainCategoryDTO>> getMainCategories() async {
    final res = (await dio.get('/main_category')).data as List;
    return res.map((e) => MainCategoryDTO.fromJson(e)).toList();
  }
}
