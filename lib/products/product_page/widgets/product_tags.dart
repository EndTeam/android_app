import 'package:flutter/material.dart';
import 'package:ma_for_feip/theme_info.dart';

class ProductTags extends StatelessWidget {
  final List<String> tags;

  const ProductTags({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final tag = tags[index];
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ThemeInfo.mediumRadius),
              border: Border.all(
                color: Colors.black12,
                width: 1,
              ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: ThemeInfo.horizontalPadding,
              vertical: ThemeInfo.verticalPadding,
            ),
            child: Text(
              tag,
              style: ThemeInfo.labelSmall,
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: ThemeInfo.inListSeparator),
        itemCount: tags.length,
      ),
    );
  }
}
