import 'package:dio/dio.dart';
import 'package:ma_for_feip/products/product_page/product_page_state/product_page_state.dart';
import 'package:ma_for_feip/products/product_page/product_page_notifier.dart';
import 'package:ma_for_feip/products/repository/abstract_repository.dart';
import 'package:ma_for_feip/products/repository/products_repository.dart';
import 'package:ma_for_feip/products/service/abstract_products_service.dart';
import 'package:ma_for_feip/products/service/mock_products_service.dart';
import 'package:ma_for_feip/service_locator/service_locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppLocator extends ServiceLocator {
  static AppLocator? _instance;

  static AppLocator get instance {
    _instance ??= AppLocator._();
    return _instance!;
  }

  AppLocator._();

  late final Dio _dio;
  late final AbstractProductRepository _productsRepository;
  late final AbstractProductsService _productsService;

  @override
  late final AutoDisposeStateNotifierProviderFamily<ProductPageNotifier,
      ProductPageState, int> productPageProviderBuilder;

  Future<void> init() async {
    _initProductRepo();
    _initProductPage();
    _initDio();
  }

  void _initProductPage() {
    productPageProviderBuilder = StateNotifierProvider.autoDispose
        .family<ProductPageNotifier, ProductPageState, int>(
            (ref, id) => ProductPageNotifier(id, _productsRepository));
  }

  void _initProductRepo() {
    _productsService = MockProductsService();
    _productsRepository = ProductsRepository(_productsService);
  }

  void _initDio() {
    _dio = Dio();
    _dio;
  }
}
