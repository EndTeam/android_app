import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/products/service/abstract_products_service.dart';

abstract class AbstractProductRepository {
  AbstractProductsService serivce;

  AbstractProductRepository(this.serivce);

  List<ProductModel> getProducts();

  ProductModel getProductByID(int id);
}
