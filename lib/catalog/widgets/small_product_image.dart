import 'package:flutter/material.dart';
import 'package:ma_for_feip/theme_info.dart';

class SmallProductImage extends StatelessWidget {
  final String image;
  final bool isNew;
  final bool isSale;

  const SmallProductImage({
    super.key,
    required this.image,
    required this.isNew,
    required this.isSale,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ThemeInfo.horizontalPadding,
        ),
        child: Stack(
          children: [
            Center(
              child: Image.network(
                image,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  if (isSale)
                    Container(
                      color: const Color(0xFFCDCFD6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 12),
                      child: Text(
                        'ЛУЧШАЯ ЦЕНА',
                        style: ThemeInfo.labelSmall.copyWith(
                          color: ThemeInfo.tertiaryTextColor,
                        ),
                      ),
                    ),
                  if (!isSale && isNew)
                    Container(
                      color: const Color(0xFFCDCFD6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 12),
                      child: Text(
                        'NEW',
                        style: ThemeInfo.labelSmall.copyWith(
                          color: ThemeInfo.tertiaryTextColor,
                        ),
                      ),
                    ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      /* Subscribe */
                    },
                    icon: const Icon(
                      Icons.favorite,
                      size: 24,
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
