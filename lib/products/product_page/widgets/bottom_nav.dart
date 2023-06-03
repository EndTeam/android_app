import 'package:flutter/material.dart';
import 'package:ma_for_feip/theme_info.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final halfWidth = constraints.maxWidth / 2;
        return Row(
          children: [
            InkWell(
              onTap: () {
                /* navigate to catalog */
              },
              child: SizedBox(
                width: halfWidth,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: ThemeInfo.verticalPadding,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.manage_search),
                      Text(
                        'Каталог',
                        style: ThemeInfo.labelSmall,
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                /* navigate to cart */
              },
              child: SizedBox(
                width: halfWidth,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: ThemeInfo.verticalPadding,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_bag_outlined),
                      Text(
                        'Корзина',
                        style: ThemeInfo.labelSmall,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
