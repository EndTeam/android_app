import 'package:flutter/material.dart';
import 'package:ma_for_feip/theme_info.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF32302F),
          shape: const RoundedRectangleBorder(),
        ),
        onPressed: () {
          /* Add product to cart */
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
}
