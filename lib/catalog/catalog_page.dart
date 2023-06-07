import 'package:flutter/material.dart';
import 'package:ma_for_feip/base_page_interface.dart';
import 'package:ma_for_feip/catalog/widgets/category_grid.dart';
import 'package:ma_for_feip/catalog/widgets/category_list_with_items.dart';
import 'package:ma_for_feip/public_views/body_divider.dart';
import 'package:ma_for_feip/theme_info.dart';

class CatalogPage extends BasePageInterface {
  @override
  Icon get activeIcon => const Icon(Icons.manage_search_rounded);

  @override
  Icon get icon => const Icon(Icons.manage_search_rounded);

  @override
  String get label => 'Каталог';

  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: ThemeInfo.horizontalPadding,
      ),
      child: ListView(
        children: const [
          CategoriesGrid(),
          BodyDivider(),
          CategoryListWithItems(),
        ],
      ),
    );
  }
}
