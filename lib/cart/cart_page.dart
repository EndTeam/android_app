import 'package:flutter/material.dart';
import 'package:ma_for_feip/base_page_interface.dart';

class CartPage extends BasePageInterface {
  const CartPage({Key? key}) : super(key: key);

  @override
  Icon get activeIcon => const Icon(Icons.shopping_bag_rounded);

  @override
  Icon get icon => const Icon(Icons.shopping_bag_outlined);

  @override
  String get label => 'Корзина';

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Center(
        child: Text(
          label,
        ),
      ),
    );
  }
}
