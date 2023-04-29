import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:ma_for_feip/catalog/widgets/small_product_image.dart';
import 'package:ma_for_feip/extensions/cost.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/theme_info.dart';

class SmallProductCard extends StatelessWidget {
  final ProductModel product;

  const SmallProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: ThemeInfo.elementsGap,
      ),
      child: InkWell(
        onTap: () {}, // push productPage
        // => context.go(
        //   context.namedLocation(
        //     AppRoutes.product.routeName,
        //     params: {'productID': 0.toString()},
        //   ),
        // ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SmallProductImage(
              image: product.images.first,
              isNew: product.isNew,
              isSale: product.oldCost != null,
            ),
            const SizedBox(height: ThemeInfo.inListSeparator),
            AutoSizeText(
              product.name,
              style: ThemeInfo.labelLarge.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Text(
                    product.cost.getSpacingString(),
                    style: ThemeInfo.bodyLarge.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: ThemeInfo.inListSeparator),
                  if (product.oldCost != null)
                    Text(
                      product.oldCost!.getSpacingString(),
                      style: ThemeInfo.bodyLarge.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: ThemeInfo.secondaryTextColor,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
