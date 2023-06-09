import 'package:dio/dio.dart';
import 'package:ma_for_feip/cart/cart_provider.dart';
import 'package:ma_for_feip/cart/state/cart_state.dart';
import 'package:ma_for_feip/catalog/catalog_notifier.dart';
import 'package:ma_for_feip/catalog/catalog_state/catalog_state.dart';
import 'package:ma_for_feip/catalog/models/main_category.dart';
import 'package:ma_for_feip/catalog/repository/abstract_repository.dart';
import 'package:ma_for_feip/catalog/repository/category_repository.dart';
import 'package:ma_for_feip/catalog/service/abstract_category_service.dart';
import 'package:ma_for_feip/catalog/service/category_service.dart';
import 'package:ma_for_feip/connectivity/connectivity_provider.dart';
import 'package:ma_for_feip/in_catalog.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/products/product_page/product_page_state/product_page_state.dart';
import 'package:ma_for_feip/products/product_page/product_page_notifier.dart';
import 'package:ma_for_feip/products/repository/abstract_repository.dart';
import 'package:ma_for_feip/products/repository/products_repository.dart';
import 'package:ma_for_feip/products/service/abstract_products_service.dart';
import 'package:ma_for_feip/products/service/product_service.dart';
import 'package:ma_for_feip/service_locator/service_locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/sign_up/state/state.dart';
import 'package:ma_for_feip/sign_up/state/state_notifier.dart';

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

  @override
  late final AutoDisposeStateNotifierProviderFamily<ProductPageNotifier,
      ProductPageState, int> productPageProviderBuilder;

  @override
  late final StateNotifierProvider<CatalogNotifier, CatalogState>
      catalogPageProvider;

  @override
  late final StateNotifierProvider<ConnectivityProvider, Object?>
      connectivityProvider;

  @override
  late final FutureProvider<List<MainCategory>> categoryProvider;

  @override
  late final StateNotifierProvider<SignUpNotifier, SignUpState> signUpProvider;

  late final FutureProvider<List<ProductModel>> salesProvider;
  late final FutureProvider<List<ProductModel>> newsProvider;

  late final StateNotifierProvider<CartProvider, CartState> cartProvider;

  late final InCatalogDataSource catalogSource;

  Future<void> init() async {
    await null;
    _initDio();
    _initCart();

    _initCatalogSource();

    _initSignUp();

    _initCategoryService();
    _initCategoryRepo();
    _initCategoryProvider();

    _initCatalogProvider();

    _initProductRepo();
    _initProductPage();

    _initConnectivity();

    _initExtraCategories();
  }

  void _initCategoryService() {
    _categoryService = CategoryService(_dio);
  }

  void _initCategoryRepo() {
    _categoryRepository = MainCategoryRepository(_categoryService);
  }

  void _initCategoryProvider() {
    categoryProvider = FutureProvider((ref) async {
      return _categoryRepository.getMainCategories();
    });
  }

  void _initCatalogProvider() {
    catalogPageProvider =
        StateNotifierProvider<CatalogNotifier, CatalogState>((ref) {
      final mainCategories = ref.watch(categoryProvider);
      return CatalogNotifier(_productsRepository, mainCategories);
    });
  }

  void _initProductPage() {
    productPageProviderBuilder = StateNotifierProvider.autoDispose
        .family<ProductPageNotifier, ProductPageState, int>(
            (ref, id) => ProductPageNotifier(id, _productsRepository));
  }

  void _initProductRepo() {
    _productsService = ProductsService(_dio);
    _productsRepository = ProductsRepository(_productsService);
  }

  void _initConnectivity() {
    connectivityProvider =
        StateNotifierProvider((ref) => ConnectivityProvider());
  }

  void _initExtraCategories() {
    salesProvider = FutureProvider((ref) async {
      return await _productsRepository.getSaleProducts();
    });

    newsProvider = FutureProvider((ref) async {
      return await _productsRepository.getNewProducts();
    });
  }

  void _initSignUp() {
    signUpProvider =
        StateNotifierProvider((ref) => SignUpNotifier(SignUpSource(_dio)));
  }

  void _initDio() {
    _dio = Dio(BaseOptions(baseUrl: 'http://192.168.0.102:8000/api/v1'));
  }

  void _initCart() {
    cartProvider =
        StateNotifierProvider<CartProvider, CartState>((ref) => CartProvider());
  }

  void _initCatalogSource() {
    catalogSource = InCatalogDataSource(_dio);
  }
}
