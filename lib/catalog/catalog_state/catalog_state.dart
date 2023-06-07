import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ma_for_feip/catalog/models/main_category.dart';
import 'package:ma_for_feip/products/models/product_model.dart';

part 'catalog_state.freezed.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.error({String? msg}) = CatalogError;

  const factory CatalogState.loading() = CatalogLoading;

  const factory CatalogState({
    required IMap<MainCategory, List<ProductModel>> products,
  }) = _CatalogState;
}
