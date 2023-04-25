import 'package:flutter/material.dart';
import 'package:ma_for_feip/theme_info.dart';

class GradientDivider extends StatelessWidget {
  const GradientDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ThemeInfo.verticalPadding,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0x1a9e9e9e),
            Color(0x009E9E9E),
          ],
          stops: [0, 1],
        ),
      ),
    );
  }
}
