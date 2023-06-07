import 'package:flutter/material.dart';
import 'package:ma_for_feip/catalog/models/main_category.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/theme_info.dart';

import 'small_product_card.dart';

class CategoryFlexCatalog extends StatelessWidget {
  final MainCategory category;
  final List<ProductModel> products;

  const CategoryFlexCatalog({
    super.key,
    required this.category,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            category.name,
            style: ThemeInfo.labelLarge,
          ),
        ),
        const SizedBox(height: ThemeInfo.elementsGap),
        LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: 270,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: (constraints.maxWidth - 20) * 0.5,
                    child: SmallProductCard(
                      product: products[index],
                      scaleFromBase: 0.5,
                    ),
                  );
                },
                separatorBuilder: (_, __) {
                  return const SizedBox(width: ThemeInfo.inListSeparator);
                },
                itemCount: products.length,
              ),
            );
          },
        ),
      ],
    );
  }
}
