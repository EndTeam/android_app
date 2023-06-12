import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/products/service/abstract_products_service.dart';

abstract class AbstractProductRepository {
  AbstractProductsService serivce;

  AbstractProductRepository(this.serivce);

  Future<List<ProductModel>> getProducts(int categoryID);

  Future<List<ProductModel>> getMainCatProducts(int categoryID);

  Future<ProductModel> getProductByID(int id);

  Future<List<ProductModel>> getNewProducts();

  Future<List<ProductModel>> getSaleProducts();
}
