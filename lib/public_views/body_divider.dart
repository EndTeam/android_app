import 'package:flutter/material.dart';
import 'package:ma_for_feip/theme_info.dart';

class BodyDivider extends StatelessWidget {
  const BodyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: ThemeInfo.elementsGap);
  }
}
