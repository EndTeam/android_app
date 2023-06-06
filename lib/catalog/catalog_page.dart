import 'package:flutter/material.dart';
import 'package:ma_for_feip/base_page_interface.dart';
import 'package:ma_for_feip/catalog/models/category.dart';
import 'package:ma_for_feip/catalog/widgets/category_grid.dart';
import 'package:ma_for_feip/catalog/widgets/small_product_card.dart';
import 'package:ma_for_feip/products/mapper/product_mapper.dart';
import 'package:ma_for_feip/products/mock_data/mock_product.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
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
        children: [
          CategoriesGrid(categories: cat),
          const BodyDivider(),
          CategoryListWithItems(
            categories: cp,
          ),
        ],
      ),
    );
  }
}

class CategoryListWithItems extends StatelessWidget {
  final Map<Category, List<ProductModel>> categories;

  const CategoryListWithItems({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: categories.entries.map(
        (element) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: ThemeInfo.inListSeparator,
            ),
            child: CategoryFlexCatalog(
              category: element.key,
              products: element.value,
            ),
          );
        },
      ).toList(),
    );
  }
}

class CategoryFlexCatalog extends StatelessWidget {
  final Category category;
  final List<ProductModel> products;

  const CategoryFlexCatalog({
    super.key,
    required this.category,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            category.name,
            style: ThemeInfo.labelLarge,
          ),
        ),
        const SizedBox(height: ThemeInfo.elementsGap),
        LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: 270,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: (constraints.maxWidth - 20) * 0.5,
                    child: SmallProductCard(
                      product: products[index],
                      scaleFromBase: 0.5,
                    ),
                  );
                },
                separatorBuilder: (_, __) {
                  return const SizedBox(width: ThemeInfo.inListSeparator);
                },
                itemCount: products.length,
              ),
            );
          },
        ),
      ],
    );
  }
}

final cat = [
  Category(
    'Пальто',
    'https://sheily.ru/wp-content/webpc-passthru.php?src=https://sheily.ru/wp-content/uploads/2020/11/334-115-kemel-1.jpg&nocache=1',
    0,
    1,
  ),
  Category(
    'Платья',
    'https://sheily.ru/wp-content/webpc-passthru.php?src=https://sheily.ru/wp-content/uploads/2020/11/334-115-kemel-1.jpg&nocache=1',
    0,
    1,
  ),
  Category(
    'Одежда',
    'https://sheily.ru/wp-content/webpc-passthru.php?src=https://sheily.ru/wp-content/uploads/2020/11/334-115-kemel-1.jpg&nocache=1',
    0,
    1,
  ),
  Category(
    'Верхняя одежда',
    'https://sheily.ru/wp-content/webpc-passthru.php?src=https://sheily.ru/wp-content/uploads/2020/11/334-115-kemel-1.jpg&nocache=1',
    0,
    1,
  ),
  Category(
    'Сумки',
    'https://sheily.ru/wp-content/webpc-passthru.php?src=https://sheily.ru/wp-content/uploads/2020/11/334-115-kemel-1.jpg&nocache=1',
    0,
    1,
  ),
  Category(
    'Обувь',
    'https://sheily.ru/wp-content/webpc-passthru.php?src=https://sheily.ru/wp-content/uploads/2020/11/334-115-kemel-1.jpg&nocache=1',
    0,
    1,
  ),
  Category(
    'Аксессуары',
    'https://sheily.ru/wp-content/webpc-passthru.php?src=https://sheily.ru/wp-content/uploads/2020/11/334-115-kemel-1.jpg&nocache=1',
    0,
    1,
  ),
  Category(
    'Идеи для подарков',
    'https://sheily.ru/wp-content/webpc-passthru.php?src=https://sheily.ru/wp-content/uploads/2020/11/334-115-kemel-1.jpg&nocache=1',
    0,
    1,
  ),
];

final cp = {
  cat[0]: MockProduct()
      .genProducts(10, 10)
      .map((e) => ProductMapper.fromSource(e))
      .toList(),
};
