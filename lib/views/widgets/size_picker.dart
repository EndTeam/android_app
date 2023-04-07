import 'package:flutter/material.dart';
import 'package:ma_for_feip/models/named_size.dart';

class SizePicker extends StatelessWidget {
  final List<NamedSize> sizes;
  final int selected;
  final void Function(NamedSize size) onSizePicked;

  const SizePicker({
    Key? key,
    required this.sizes,
    required this.selected,
    required this.onSizePicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 16),
      itemBuilder: (BuildContext context, int index) {
        final size = sizes[index];
        bool isIt = sizes[selected] == size;
        return Card(
          surfaceTintColor: Colors.white,
          color: isIt ? const Color(0x1AA1948C) : Colors.white,
          elevation: isIt ? 0 : 5,
          child: InkWell(
            onTap: () => onSizePicked(size),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(size.size),
                  Text('(${size.minSize}-${size.maxSize})'),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: sizes.length,
    );
  }
}
