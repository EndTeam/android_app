import 'package:ma_for_feip/products/models_dto/product_model/product_model.dart';

abstract class AbstractProductsService {
  List<ProductModelDTO> getProducts();

  ProductModelDTO getProductByID(int id);
}