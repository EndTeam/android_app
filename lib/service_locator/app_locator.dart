import 'package:dio/dio.dart';
import 'package:ma_for_feip/products/product_page/product_page_state/product_page_state.dart';
import 'package:ma_for_feip/products/product_page/product_page_notifier.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
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

  @override
  late final AutoDisposeStateNotifierProviderFamily<ProductPageNotifier,
      ProductPageState, ProductModel> productPageProviderBuilder;

  Future<void> init() async {
    _initProductPage();
    _initDio();
  }

  void _initProductPage() {
    productPageProviderBuilder = StateNotifierProvider.autoDispose
        .family<ProductPageNotifier, ProductPageState, ProductModel>(
            (ref, product) => ProductPageNotifier(product));
  }

  void _initDio() {
    _dio = Dio();
    _dio;
  }
}
