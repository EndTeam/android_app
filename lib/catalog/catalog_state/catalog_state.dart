import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ma_for_feip/catalog/models/category.dart';
import 'package:ma_for_feip/products/models/product_model.dart';

part 'catalog_state.freezed.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.error({String? msg}) = CatalogError;

  const factory CatalogState.loading() = CatalogLoading;

  const factory CatalogState({
    required List<Category> categories,
    required List<ProductModel> products,
  }) = _CatalogState;
}
