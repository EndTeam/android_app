import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ma_for_feip/models/products/product.dart';
import 'package:ma_for_feip/models/size.dart';

class ProductPageProvider extends Cubit<ProductPageState> {
  ProductPageProvider(Product p) : super(ProductPageState(p));

  void pickColor(Color color) {
    emit(state.._pickedColor = color);
  }

  void pickSize(Size size) {
    emit(state.._pickedSize = size);
  }
}

class ProductPageState {
  final Product _product;

  late Size _pickedSize = _product.sizes.first;
  late Color _pickedColor = _product.colors.first;

  Product get product => _product;

  Size get pickedSize => _pickedSize;

  Color get pickedColor => _pickedColor;

  ProductPageState(this._product);
}
