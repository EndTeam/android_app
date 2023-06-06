import 'package:ma_for_feip/products/models_dto/product_model/product_model.dart';

abstract class AbstractProductsService {
  Future<List<ProductModelDTO>> getProducts(int categoryID);
  Future<List<ProductModelDTO>> getMainCatProducts(int categoryID);

  Future<ProductModelDTO> getProductByID(int id);
}
