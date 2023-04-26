import 'package:flutter/material.dart';
import 'package:ma_for_feip/products/models/named_size.dart';
import 'package:ma_for_feip/products/product_page/widgets/body_divider.dart';
import 'package:ma_for_feip/theme_info.dart';
import 'package:ma_for_feip/views/widgets/size_picker.dart';

class SizesBloc extends StatelessWidget {
  final List<NamedSize> sizes;
  final NamedSize selectedSize;
  final void Function(NamedSize) onSizeTap;

  const SizesBloc({
    super.key,
    required this.sizes,
    required this.selectedSize,
    required this.onSizeTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            /* Open dialog with table */
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.straighten),
              const SizedBox(width: ThemeInfo.inListSeparator),
              Text(
                'Таблица размеров',
                style: ThemeInfo.bodyLarge.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
        const BodyDivider(),
        const Text(
          'Выберите размер',
          style: ThemeInfo.bodyLarge,
        ),
        const BodyDivider(),
        SizedBox(
          height: 80,
          child: SizePicker(
            sizes: sizes,
            selected: sizes.indexOf(selectedSize),
            onSizePicked: onSizeTap,
          ),
        ),
      ],
    );
  }
}
