import 'package:dio/dio.dart';
import 'package:ma_for_feip/products/models_dto/product_model/product_model.dart';
import 'package:ma_for_feip/products/service/abstract_products_service.dart';

class ProductsService extends AbstractProductsService {
  final Dio dio;

  ProductsService(this.dio);

  @override
  Future<ProductModelDTO> getProductByID(int id) async {
    final result = (await dio.get('/product/$id')).data;
    return ProductModelDTO.fromJson(result);
  }

  @override
  Future<List<ProductModelDTO>> getProducts(int categoryID) async {
    final response = await dio.get('/product/?category=$categoryID') as Map;
    return (response['results'] as List)
        .map((e) => ProductModelDTO.fromJson(e))
        .toList();
  }

  @override
  Future<List<ProductModelDTO>> getMainCatProducts(int categoryID) async {
    final response =
        (await dio.get('/product/?category__main_category=$categoryID')).data
            as Map;
    return (response['results'] as List)
        .map((e) => ProductModelDTO.fromJson(e))
        .toList();
  }
}
