import 'package:flutter/material.dart';
import 'package:ma_for_feip/theme_info.dart';

class CostLine extends StatelessWidget {
  final String cost;
  final String? oldCost;

  const CostLine({super.key, required this.cost, this.oldCost});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          cost,
          style: ThemeInfo.bodyLarge.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(width: ThemeInfo.inListSeparator),
        if (oldCost != null)
          Text(
            oldCost!,
            style: ThemeInfo.bodyLarge.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: ThemeInfo.secondaryTextColor,
              decoration: TextDecoration.lineThrough,
            ),
          ),
      ],
    );
  }
}
