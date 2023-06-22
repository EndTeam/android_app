import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:ma_for_feip/products/models/product_model.dart';

class CartState {
  final IMap<ProductModel, int> products;

  CartState(this.products);
}
