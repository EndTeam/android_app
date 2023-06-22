import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/cart/state/cart_state.dart';
import 'package:ma_for_feip/products/models/product_model.dart';

class CartProvider extends StateNotifier<CartState> {
  CartProvider() : super(CartState(<ProductModel, int>{}.lock));

  void addToCart(ProductModel model) {
    final prods = state.products.unlock;
    if (!prods.containsKey(model)) {
      prods[model] = 0;
    }
    prods[model] = prods[model]! + 1;
    state = CartState(prods.lock);
  }

  void removeFromCart(ProductModel model) {
    final prods = state.products.unlock;
    if (prods.containsKey(model)) {
      if (prods[model] == 1) {
        prods.remove(model);
      } else {
        prods[model] = prods[model]! - 1;
      }
    }
    state = CartState(prods.lock);
  }
}
