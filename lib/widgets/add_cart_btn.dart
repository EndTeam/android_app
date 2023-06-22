import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/service_locator/app_locator.dart';
import 'package:ma_for_feip/theme_info.dart';

class AddCartBtn extends ConsumerWidget {
  final ProductModel productModel;

  const AddCartBtn({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(
      AppLocator.instance.cartProvider.select(
        (value) => value.products.where(
          (key, value) => key == productModel,
        ),
      ),
    );

    if (product.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF32302F),
            shape: const RoundedRectangleBorder(),
          ),
          onPressed: () {
            ref.read(AppLocator.instance.cartProvider.notifier).addToCart(
                  productModel,
                );
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: ThemeInfo.verticalPadding,
              ),
              child: Text(
                'В корзину',
                style: ThemeInfo.labelLarge.copyWith(
                  color: ThemeInfo.tertiaryTextColor,
                ),
              ),
            ),
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              ref
                  .read(AppLocator.instance.cartProvider.notifier)
                  .removeFromCart(
                    productModel,
                  );
            },
            child: const Text('-'),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white10,
                foregroundColor: Colors.black,
                textStyle: ThemeInfo.bodyLarge,
              ),
              child: Text(product.values.first.toString()),
            ),
          ),
          const SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {
              ref.read(AppLocator.instance.cartProvider.notifier).addToCart(
                    productModel,
                  );
            },
            child: const Text('+'),
          ),
        ],
      ),
    );
  }
}
