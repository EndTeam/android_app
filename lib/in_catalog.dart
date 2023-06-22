import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:ma_for_feip/catalog/widgets/small_product_card.dart';
import 'package:ma_for_feip/products/mapper/product_mapper.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/products/models_dto/product/product.dart';
import 'package:ma_for_feip/service_locator/app_locator.dart';
import 'package:ma_for_feip/theme_info.dart';

class InCatalogDataSource {
  final Dio _dio;

  InCatalogDataSource(this._dio);

  Future<void> fetchPage(int pageKey, PagingController controller) async {
    final resp = (await _dio.get('/product/?page=$pageKey')).data as Map;
    final dtos = (resp['results'] as List)
        .map((e) => ProductModelDTO.fromJson(e))
        .toList();
    final model = dtos.map((dto) => ProductMapper.fromSource(dto)).toList();
    if (pageKey * 10 == resp['count']) {
      controller.appendLastPage(model);
    } else {
      controller.appendPage(model, pageKey + 1);
    }
  }
}

class InCatalog extends ConsumerStatefulWidget {
  final int categoryId;

  const InCatalog({Key? key, required this.categoryId}) : super(key: key);

  @override
  ConsumerState<InCatalog> createState() => _InCatalogState();
}

class _InCatalogState extends ConsumerState<InCatalog> {
  late final PagingController _pagingController;

  @override
  void initState() {
    super.initState();
    _pagingController = PagingController(firstPageKey: 1);
    _pagingController.addPageRequestListener((pageKey) {
      AppLocator.instance.catalogSource.fetchPage(pageKey, _pagingController);
    });
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mainCategory =
        ref.watch(AppLocator.instance.catalogPageProvider).whenOrNull(
              (products) => products.keys.where(
                (element) => element.id == widget.categoryId,
              ),
            );
    if (mainCategory == null || mainCategory.isEmpty) {
      Future.delayed(Duration.zero, () {
        context.pop();
      });
      return Container();
    }
    final category = mainCategory.first;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.name,
          style: ThemeInfo.labelLarge,
        ),
      ),
      body: Column(
        children: [
          const Divider(),
          Expanded(
            child: PagedGridView(
              pagingController: _pagingController,
              builderDelegate: PagedChildBuilderDelegate<ProductModel>(
                itemBuilder: (context, dynamic item, index) {
                  return SmallProductCard(
                    product: item,
                    scaleFromBase: 0.8,
                  );
                },
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.7,
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
