import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ma_for_feip/products/models/named_color.dart';
import 'package:ma_for_feip/products/models/named_size.dart';
import 'package:ma_for_feip/products/product_page/product_page_state/product_page_state.dart';
import 'package:ma_for_feip/products/repository/abstract_repository.dart';

class ProductPageNotifier extends StateNotifier<ProductPageState> {
  final int _id;
  final AbstractProductRepository _repo;

  ProductPageNotifier(this._id, this._repo) : super(const ProductPageState.loading()) {
    _loadProduct();
  }

  void _updateState(ProductPageState newState) => state = newState;

  void pickColor(NamedColor newColor) {
    state.mapOrNull(
      (ps) => _updateState(ps.copyWith(color: newColor)),
    );
  }

  void pickSize(NamedSize newSize) {
    state.mapOrNull(
      (ps) => _updateState(ps.copyWith(size: newSize)),
    );
  }

  void _loadProduct() async {
    try {
      final product = await _repo.getProductByID(_id);
      _updateState(
        ProductPageState(
          product: product,
          color: product.colors.first,
          size: product.sizes.first,
        ),
      );
    } catch (e, s) {
      _updateState(
        const ProductPageState.error(msg: 'Что-то пошло не так'),
      ); // TODO: add errors
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }
}
