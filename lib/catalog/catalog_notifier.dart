import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/catalog/catalog_state/catalog_state.dart';
import 'package:ma_for_feip/catalog/models/main_category.dart';
import 'package:ma_for_feip/products/repository/abstract_repository.dart';

class CatalogNotifier extends StateNotifier<CatalogState> {
  final AbstractProductRepository _repo;
  final AsyncValue<List<MainCategory>> _categories;

  CatalogNotifier(this._repo, this._categories)
      : super(const CatalogState.loading()) {
    _loadProducts();
  }

  void _updateState(CatalogState newState) => state = newState;

  void _loadProducts() async {
    try {
      if (_categories.isLoading || _categories.value == null) {
        _updateState(const CatalogState.loading());
        return;
      }
      for (var cat in _categories.value!) {
        final products = await _repo.getMainCatProducts(cat.id);
        if (products.isEmpty) continue;
        state.mapOrNull(
          (value) => _updateState(
              value.copyWith(products: value.products.add(cat, products))),
          loading: (_) =>
              _updateState(CatalogState(products: {cat: products}.lock)),
        );
      }
    } catch (e, s) {
      _updateState(
        const CatalogState.error(msg: 'Что-то пошло не так'),
      ); // TODO: add errors
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }
}
