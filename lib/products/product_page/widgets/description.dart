import 'package:flutter/cupertino.dart';
import 'package:ma_for_feip/theme_info.dart';

class Description extends StatelessWidget {
  final List<String> description;

  const Description({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var d in description)
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: ThemeInfo.verticalPadding,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFA1948C),
                    borderRadius: BorderRadius.circular(ThemeInfo.smallRadius),
                  ),
                  height: 5,
                  width: 5,
                  child: const SizedBox.expand(),
                ),
                const SizedBox(width: ThemeInfo.inListSeparator),
                Text(
                  d,
                  style: ThemeInfo.bodyLarge,
                )
              ],
            ),
          ),
      ],
    );
  }
}
