import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/catalog/catalog_notifier.dart';
import 'package:ma_for_feip/catalog/catalog_state/catalog_state.dart';
import 'package:ma_for_feip/catalog/models/main_category.dart';
import 'package:ma_for_feip/connectivity/connectivity_provider.dart';
import 'package:ma_for_feip/products/product_page/product_page_notifier.dart';
import 'package:ma_for_feip/products/product_page/product_page_state/product_page_state.dart';
import 'package:ma_for_feip/sign_in/state/state.dart';
import 'package:ma_for_feip/sign_in/state/state_notifier.dart';
import 'package:ma_for_feip/sign_up/state/state.dart';
import 'package:ma_for_feip/sign_up/state/state_notifier.dart';

abstract class ServiceLocator {
  abstract final AutoDisposeStateNotifierProviderFamily<ProductPageNotifier,
      ProductPageState, int> productPageProviderBuilder;

  abstract final StateNotifierProvider<CatalogNotifier, CatalogState>
      catalogPageProvider;

  abstract final StateNotifierProvider<ConnectivityProvider, Object?>
      connectivityProvider;

  abstract final FutureProvider<List<MainCategory>> categoryProvider;

  abstract final StateNotifierProvider<SignUpNotifier, SignUpState>
      signUpProvider;

  abstract final StateNotifierProvider<SignInNotifier, SignInState>
      signInProvider;
}
