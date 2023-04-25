import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ma_for_feip/products/models/named_color.dart';
import 'package:ma_for_feip/products/models/named_size.dart';
import 'package:ma_for_feip/products/models/product_model.dart';

part 'product_page_state.freezed.dart';

@freezed
class ProductPageState with _$ProductPageState {
  const factory ProductPageState({
    required ProductModel product,
    required NamedColor color,
    required NamedSize size,
  }) = _ProductPageState;
}
