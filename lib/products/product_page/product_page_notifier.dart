import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ma_for_feip/products/models/named_color.dart';
import 'package:ma_for_feip/products/models/named_size.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/products/product_page/product_page_state/product_page_state.dart';

class ProductPageNotifier extends StateNotifier<ProductPageState> {
  ProductPageNotifier(ProductModel product)
      : super(
          ProductPageState(
            product: product,
            color: product.colors.first,
            size: product.sizes.first,
          ),
        );

  void _updateState(ProductPageState newState) => state = newState;

  void pickColor(NamedColor newColor) {
    _updateState(state.copyWith(color: newColor));
  }

  void pickSize(NamedSize newSize) {
    _updateState(state.copyWith(size: newSize));
  }
}
