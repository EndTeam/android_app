import 'package:flutter/foundation.dart';
import 'package:ma_for_feip/products/models_dto/product_model/product_model.dart';
import 'package:ma_for_feip/products/service/abstract_products_service.dart';
import 'package:ma_for_feip/products/mock_data/mock_product.dart';

class MockProductsService extends AbstractProductsService {
  static List<ProductModelDTO>? _products;

  final _mock = MockProduct();

  @override
  Future<ProductModelDTO> getProductByID(int id) async {
    if (_products == null && kDebugMode) {
      getProducts(0);
    }
    return Future(() => _products![id]);
  }

  @override
  Future<List<ProductModelDTO>> getProducts(int categoryID) {
    _products ??= _mock.genProducts(10);
    return Future(() => _products!);
  }
}
