import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/products/repository/abstract_repository.dart';

class ProductsRepository extends AbstractProductRepository {
  ProductsRepository(super.serivce);

  @override
  ProductModel getProductByID(int id) {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

  @override
  List<ProductModel> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }
}
