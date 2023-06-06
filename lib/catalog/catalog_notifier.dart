// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:ma_for_feip/catalog/catalog_state/catalog_state.dart';
// import 'package:ma_for_feip/products/repository/abstract_repository.dart';
//
// class CatalogNotifier extends StateNotifier<CatalogState> {
//   final AbstractProductRepository _repo;
//
//   CatalogNotifier(this._repo) : super(const CatalogState.loading()) {
//     // TODO start loading;
//   }
//
//   void _updateState(CatalogState newState) => state = newState;
//
//   void _loadProducts() async {
//     try {
//       final products = await _repo.getProducts();
//       _updateState(
//         CatalogState(categories: categories, products: products)
//       );
//     } catch (e, s) {
//       _updateState(const ProductPageState.error(msg: 'Что-то пошло не так')); // TODO: add errors
//       debugPrint(e.toString());
//       debugPrintStack(stackTrace: s);
//     }
//   }
//
//   void _loadCategories() {}
// }
