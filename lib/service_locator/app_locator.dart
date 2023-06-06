import 'package:dio/dio.dart';
import 'package:ma_for_feip/catalog/repository/abstract_repository.dart';
import 'package:ma_for_feip/catalog/repository/category_repository.dart';
import 'package:ma_for_feip/catalog/service/abstract_category_service.dart';
import 'package:ma_for_feip/catalog/service/category_service.dart';
import 'package:ma_for_feip/connectivity/connectivity_provider.dart';
import 'package:ma_for_feip/products/product_page/product_page_state/product_page_state.dart';
import 'package:ma_for_feip/products/product_page/product_page_notifier.dart';
import 'package:ma_for_feip/products/repository/abstract_repository.dart';
import 'package:ma_for_feip/products/repository/products_repository.dart';
import 'package:ma_for_feip/products/service/abstract_products_service.dart';
import 'package:ma_for_feip/products/service/product_service.dart';
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
  late final AbstractMainCategoryRepository _categoryRepository;
  late final AbstractCategoryService _categoryService;

  AbstractMainCategoryRepository get categoryRepository => _categoryRepository;

  AbstractProductRepository get productsRepository => _productsRepository;

  @override
  late final AutoDisposeStateNotifierProviderFamily<ProductPageNotifier, ProductPageState, int>
      productPageProviderBuilder;

  @override
  late final StateNotifierProvider<ConnectivityProvider, Object?> connectivityProvider;

  Future<void> init() async {
    await null;
    _initDio();
    _initProductRepo();
    _initProductPage();
    _initCategoryService();
    _initCategoryRepo();

    _initConnectivity();
  }

  void _initCategoryService() {
    _categoryService = CategoryService(_dio);
  }

  void _initCategoryRepo() {
    _categoryRepository = MainCategoryRepository(_categoryService);
  }

  void _initProductPage() {
    productPageProviderBuilder = StateNotifierProvider.autoDispose
        .family<ProductPageNotifier, ProductPageState, int>((ref, id) => ProductPageNotifier(id, _productsRepository));
  }

  void _initProductRepo() {
    _productsService = ProductsService(_dio);
    _productsRepository = ProductsRepository(_productsService);
  }

  void _initConnectivity() {
    connectivityProvider = StateNotifierProvider((ref) => ConnectivityProvider());
  }

  void _initDio() {
    _dio = Dio(BaseOptions(baseUrl: 'http://localhost:8000/api/v1'));
  }
}
