import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ma_for_feip/extensions/cost.dart';
import 'package:ma_for_feip/products/product_page/widgets/big_product_image.dart';
import 'package:ma_for_feip/public_views/body_divider.dart';
import 'package:ma_for_feip/products/product_page/widgets/bottom_nav.dart';
import 'package:ma_for_feip/products/product_page/widgets/cart_button.dart';
import 'package:ma_for_feip/products/product_page/widgets/colors_bloc.dart';
import 'package:ma_for_feip/products/product_page/widgets/cost_line.dart';
import 'package:ma_for_feip/products/product_page/widgets/description.dart';
import 'package:ma_for_feip/products/product_page/widgets/gradient_divider.dart';
import 'package:ma_for_feip/products/product_page/widgets/product_tags.dart';
import 'package:ma_for_feip/products/product_page/widgets/similar_items.dart';
import 'package:ma_for_feip/products/product_page/widgets/sizes_bloc.dart';
import 'package:ma_for_feip/service_locator/app_locator.dart';
import 'package:ma_for_feip/theme_info.dart';
import 'package:ma_for_feip/widgets/add_cart_btn.dart';

class ProductPage extends ConsumerWidget {
  final int id;

  const ProductPage(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final providerBuilder = AppLocator.instance.productPageProviderBuilder;
    final state = ref.watch(providerBuilder(id));
    return state.map(
      (state) => Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: ThemeInfo.horizontalPadding,
                ),
                children: [
                  BigProductImage(product: state.product),
                  const BodyDivider(),
                  ProductTags(tags: state.product.tags),
                  const BodyDivider(),
                  Text(state.product.name, style: ThemeInfo.titleLarge),
                  const BodyDivider(),
                  CostLine(
                    cost: state.product.cost.getSpacingString(),
                    oldCost: state.product.oldCost?.getSpacingString(),
                  ),
                  const BodyDivider(),
                  ColorsBloc(
                    colors: state.product.colors,
                    selectedColor: state.color,
                    onColorTap:
                        ref.read(providerBuilder(id).notifier).pickColor,
                  ),
                  const BodyDivider(),
                  SizesBloc(
                    sizes: state.product.sizes,
                    selectedSize: state.size,
                    onSizeTap: ref.read(providerBuilder(id).notifier).pickSize,
                  ),
                  const BodyDivider(),
                  Description(description: state.product.description),
                  const BodyDivider(),
                  const SimilarItems(),
                ],
              ),
            ),
            const GradientDivider(),
            AddCartBtn(productModel: state.product),
            const Divider(height: 1),
            const BottomNav(),
          ],
        ),
      ),
      loading: (_) => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error) => Scaffold(
        body: Center(
          child: Text(
            error.msg ?? '',
            style: ThemeInfo.bodyLarge,
          ),
        ),
      ),
    );
  }
}
