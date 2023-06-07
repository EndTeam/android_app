import 'package:ma_for_feip/products/models_dto/product/product.dart';

abstract class AbstractProductsService {
  Future<List<ProductModelDTO>> getProducts(int categoryID);
  Future<List<ProductModelDTO>> getMainCatProducts(int categoryID);

  Future<ProductModelDTO> getProductByID(int id);
}
