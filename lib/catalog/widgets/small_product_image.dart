import 'package:flutter/material.dart';
import 'package:ma_for_feip/theme_info.dart';

class SmallProductImage extends StatelessWidget {
  final String image;
  final bool isNew;
  final bool isSale;
  final double scaleFromBase;

  const SmallProductImage({
    super.key,
    required this.image,
    required this.isNew,
    required this.isSale,
    this.scaleFromBase = 1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400 * scaleFromBase,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ThemeInfo.horizontalPadding,
        ),
        child: Stack(
          children: [
            Center(
              child: Image.network(
                image,
                fit: BoxFit.fill,
              ),
            ),
            if (scaleFromBase > 0.99)
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
                            fontSize:
                                ThemeInfo.labelSmall.fontSize! * scaleFromBase,
                          ),
                        ),
                      ),
                    if (!isSale && isNew)
                      Container(
                        color: const Color(0xFFCDCFD6),
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 12,
                        ),
                        child: Text(
                          'NEW',
                          style: ThemeInfo.labelSmall.copyWith(
                            color: ThemeInfo.tertiaryTextColor,
                            fontSize:
                                ThemeInfo.labelSmall.fontSize! * scaleFromBase,
                          ),
                        ),
                      ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        /* Subscribe */
                      },
                      icon: Icon(
                        Icons.favorite,
                        size: 24 * scaleFromBase,
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
