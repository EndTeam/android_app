import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/catalog/widgets/category_flex_catalog.dart';
import 'package:ma_for_feip/service_locator/app_locator.dart';
import 'package:ma_for_feip/theme_info.dart';
import 'package:skeletons/skeletons.dart';

class CategoryListWithItems extends ConsumerWidget {
  const CategoryListWithItems({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final products = ref.watch(AppLocator.instance.catalogPageProvider);
    return products.when(
      (products) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: products.entries.map(
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
      },
      loading: () {
        return SizedBox(
          height: 800,
          child: SkeletonListView(
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: ThemeInfo.inListSeparator,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SkeletonLine(),
                    ),
                    SizedBox(
                      height: ThemeInfo.inListSeparator,
                    ),
                    SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: SkeletonAvatar(),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
      error: (s) {
        return Center(child: Text(s.toString()));
      },
    );
  }
}
