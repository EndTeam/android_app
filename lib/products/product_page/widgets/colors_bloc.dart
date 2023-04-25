import 'package:flutter/material.dart';
import 'package:ma_for_feip/products/models/named_color.dart';
import 'package:ma_for_feip/products/product_page/widgets/body_divider.dart';
import 'package:ma_for_feip/theme_info.dart';
import 'package:ma_for_feip/views/widgets/color_picker.dart';

class ColorsBloc extends StatelessWidget {
  final List<NamedColor> colors;
  final NamedColor selectedColor;
  final void Function(NamedColor) onColorTap;

  const ColorsBloc({
    super.key,
    required this.colors,
    required this.selectedColor,
    required this.onColorTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Цвет',
              style: ThemeInfo.bodyLarge.copyWith(color: Colors.grey),
            ),
            const SizedBox(width: ThemeInfo.inListSeparator),
            Text(
              selectedColor.label,
              style: ThemeInfo.bodyLarge,
            ),
          ],
        ),
        const BodyDivider(),
        SizedBox(
          height: 40,
          child: ColorPicker(
            colors: colors,
            selected: colors.indexOf(selectedColor),
            onColorPicked: onColorTap,
          ),
        ),
      ],
    );
  }
}
