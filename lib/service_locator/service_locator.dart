import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/connectivity/connectivity_provider.dart';
import 'package:ma_for_feip/products/product_page/product_page_notifier.dart';
import 'package:ma_for_feip/products/product_page/product_page_state/product_page_state.dart';

abstract class ServiceLocator {
  abstract final AutoDisposeStateNotifierProviderFamily<ProductPageNotifier,
      ProductPageState, int> productPageProviderBuilder;

  abstract final StateNotifierProvider<ConnectivityProvider, Object?>
      connectivityProvider;
}
