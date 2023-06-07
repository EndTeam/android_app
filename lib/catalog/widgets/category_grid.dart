import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/catalog/models/main_category.dart';
import 'package:ma_for_feip/service_locator/app_locator.dart';
import 'package:ma_for_feip/theme_info.dart';
import 'package:skeletons/skeletons.dart';

class CategoriesGrid extends ConsumerWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final categories = ref.watch(AppLocator.instance.categoryProvider);
    return categories.when(
      data: (cats) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: ThemeInfo.elementsGap,
            mainAxisSpacing: ThemeInfo.elementsGap,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (BuildContext context, int index) {
            final category = cats[index];
            return CategoryItem(category: category);
          },
          itemCount: cats.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        );
      },
      loading: () {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: ThemeInfo.elementsGap,
            mainAxisSpacing: ThemeInfo.elementsGap,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (BuildContext context, int index) {
            return const Center(
              child: SkeletonAvatar(
                style: SkeletonAvatarStyle(shape: BoxShape.circle),
              ),
            );
          },
          itemCount: 4,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        );
      },
      error: (e, s) {
        return const Center(
          child: Text('Не удалось загрузить'),
        );
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  final MainCategory category;

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
                  child:
                      // category.image == null
                      //     ? Image.network(
                      //         category.image!,
                      //         fit: BoxFit.cover,
                      //       )
                      //     :
                      Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.grey,
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
