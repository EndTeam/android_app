import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ma_for_feip/catalog/models/category.dart';
import 'package:ma_for_feip/theme_info.dart';

class CategoriesGrid extends StatelessWidget {
  final List<Category> categories;

  const CategoriesGrid({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: ThemeInfo.elementsGap,
        mainAxisSpacing: ThemeInfo.elementsGap,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (BuildContext context, int index) {
        final category = categories[index];
        return CategoryItem(category: category);
      },
      itemCount: categories.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: ClipOval(
                child: SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxWidth,
                  child: Image.network(
                    category.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: ThemeInfo.inListSeparator),
            Flexible(
              child: AutoSizeText(
                category.name,
                style: ThemeInfo.labelSmall,
                textAlign: TextAlign.center,
                minFontSize: 8,
                maxFontSize: ThemeInfo.labelSmall.fontSize!,
              ),
            ),
          ],
        );
      },
    );
  }
}
