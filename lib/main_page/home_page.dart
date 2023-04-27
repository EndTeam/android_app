import 'package:flutter/material.dart';
import 'package:ma_for_feip/cart/cart_page.dart';
import 'package:ma_for_feip/catalog/catalog_page.dart';
import 'package:ma_for_feip/favorite/favorite_page.dart';
import 'package:ma_for_feip/main_page/scaffold_with_navigation.dart';
import 'package:ma_for_feip/profile/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScaffoldWithNavigation(
      pages: [
        CatalogPage(),
        CartPage(),
        FavoritePage(),
        ProfilePage(),
      ],
    );
  }
}
