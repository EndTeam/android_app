import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ma_for_feip/models/named_color.dart';
import 'package:ma_for_feip/models/products/product.dart';
import 'package:ma_for_feip/models/named_size.dart';

class ProductPageProvider extends Cubit<ProductPageState> {
  ProductPageProvider(Product p) : super(ProductPageState(p));

  void pickColor(NamedColor color) {
    emit(state.copyWith(color: color));
  }

  void pickSize(NamedSize size) {
    emit(state.copyWith(size: size));
  }
}

class ProductPageState {
  final Product _product;

  late NamedSize _pickedSize = _product.sizes.first;
  late NamedColor _pickedColor = _product.colors.first;

  Product get product => _product;

  NamedSize get pickedSize => _pickedSize;

  NamedColor get pickedColor => _pickedColor;

  ProductPageState(this._product);

  ProductPageState copyWith({NamedColor? color, NamedSize? size}) => ProductPageState(_product)
    .._pickedSize = size ?? _pickedSize
    .._pickedColor = color ?? _pickedColor;
}
