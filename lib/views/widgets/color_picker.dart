import 'package:flutter/material.dart';
import 'package:ma_for_feip/models/named_color.dart';

class ColorPicker extends StatelessWidget {
  final List<NamedColor> colors;
  final int selected;
  final void Function(NamedColor color) onColorPicked;

  const ColorPicker({
    Key? key,
    required this.colors,
    required this.selected,
    required this.onColorPicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final color = colors[index];
        const borderColor = Colors.black12;
        return InkWell(
          onTap: () => onColorPicked(color),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: colors[selected] == color ? const Color(0xFFA1948C) : Colors.transparent,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(60),
            ),
            padding: const EdgeInsets.all(3),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: borderColor,
                  width: 1,
                ),
                color: color.color,
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 8),
      itemCount: colors.length,
    );
  }
}
