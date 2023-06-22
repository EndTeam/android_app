import 'package:flutter/material.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/theme_info.dart';

class BigProductImage extends StatelessWidget {
  final ProductModel product;

  const BigProductImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500,
      child: Stack(
        children: [
          Image.network(
            product.images.first,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                onPressed: Navigator.of(context).pop,
                icon: const Icon(Icons.arrow_back, size: 32),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                onPressed: () {
                  /* Subscribe */
                },
                icon: product.isFavorite
                    ? const Icon(
                        Icons.favorite,
                        size: 32,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        size: 32,
                      ),
              ),
            ),
          ),
          product.isNew
              ? Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    color: const Color(0xFFCDCFD6),
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    child: Text(
                      'NEW',
                      style: ThemeInfo.labelSmall.copyWith(
                        color: ThemeInfo.tertiaryTextColor,
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ), // Images
    );
  }
}
