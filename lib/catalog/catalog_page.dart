import 'package:flutter/material.dart';
import 'package:ma_for_feip/base_page_interface.dart';
import 'package:ma_for_feip/catalog/models/category.dart';
import 'package:ma_for_feip/catalog/models/main_category.dart';
import 'package:ma_for_feip/catalog/widgets/category_grid.dart';
import 'package:ma_for_feip/catalog/widgets/small_product_card.dart';
import 'package:ma_for_feip/products/mapper/product_mapper.dart';
import 'package:ma_for_feip/products/mock_data/mock_product.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/public_views/body_divider.dart';
import 'package:ma_for_feip/service_locator/app_locator.dart';
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
          FutureBuilder(
            future: cat,
            builder: (BuildContext context, AsyncSnapshot<List<MainCategory>> snapshot) {
              if (snapshot.hasData) {
                return CategoriesGrid(categories: snapshot.data!);
              }
              return const CircularProgressIndicator();
            },
          ),
          const BodyDivider(),
          FutureBuilder(builder: (context, AsyncSnapshot<Map<MainCategory, List<ProductModel>>> snapshot) {
            if (snapshot.hasData) {
              return CategoryListWithItems(
                categories: snapshot.data!,
              );
            }
            return const CircularProgressIndicator();
          }),
        ],
      ),
    );
  }
}

class CategoryListWithItems extends StatelessWidget {
  final Map<MainCategory, List<ProductModel>> categories;

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
              category: Category('', '', 1, 0),
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

final cat = AppLocator.instance.categoryRepository.getMainCategories();
Future<Map<MainCategory, dynamic>> products = cat.then((value) async {
  final Map<MainCategory, dynamic> pr = {};
  print(value);
  value.map((e) async => pr[e] = await AppLocator.instance.productsRepository.getMainCatProducts(e.id));
  print(pr.values);
  return pr;
});
//
// final cp = {
//   cat[0]: MockProduct()
//       .genProducts(10, 10)
//       .map((e) => ProductMapper.fromSource(e))
//       .toList(),
// };
