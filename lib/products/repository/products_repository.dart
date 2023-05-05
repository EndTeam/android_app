import 'package:ma_for_feip/products/mapper/product_mapper.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/products/repository/abstract_repository.dart';

class ProductsRepository extends AbstractProductRepository {
  ProductsRepository(super.serivce);

  @override
  Future<ProductModel> getProductByID(int id) async {
    final product = await serivce.getProductByID(id);
    return ProductMapper.fromSource(product);
  }

  @override
  Future<List<ProductModel>> getProducts() async {
    final products = await serivce.getProducts();
    return products.map((p) => ProductMapper.fromSource(p)).toList();
  }
}
