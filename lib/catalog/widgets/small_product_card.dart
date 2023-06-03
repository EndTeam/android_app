import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:ma_for_feip/catalog/widgets/small_product_image.dart';
import 'package:ma_for_feip/extensions/cost.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/router/routes.dart';
import 'package:ma_for_feip/theme_info.dart';

class SmallProductCard extends StatelessWidget {
  final double scaleFromBase;
  final ProductModel product;

  const SmallProductCard({
    super.key,
    required this.product,
    this.scaleFromBase = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: ThemeInfo.elementsGap,
      ),
      child: InkWell(
        onTap: () => context.go(
          context.namedLocation(
            AppRoutes.product.name,
            params: {'productID': product.id.toString()},
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SmallProductImage(
              image: product.images.first,
              isNew: product.isNew,
              isSale: product.oldCost != null,
              scaleFromBase: scaleFromBase,
            ),
            SizedBox(height: ThemeInfo.inListSeparator * scaleFromBase),
            AutoSizeText(
              product.name,
              style:
                  ThemeInfo.labelLarge.copyWith(fontSize: 16 * scaleFromBase),
            ),
            SizedBox(
              height: 50 * scaleFromBase,
              child: Row(
                children: [
                  Text(
                    product.cost.getSpacingString(),
                    style: ThemeInfo.bodyLarge.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20 * scaleFromBase,
                    ),
                  ),
                  const SizedBox(width: ThemeInfo.inListSeparator),
                  if (product.oldCost != null)
                    Text(
                      product.oldCost!.getSpacingString(),
                      style: ThemeInfo.bodyLarge.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16 * scaleFromBase,
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
