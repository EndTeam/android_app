import 'package:flutter/material.dart';
import 'package:ma_for_feip/catalog/models/main_category.dart';
import 'package:ma_for_feip/catalog/widgets/small_product_card.dart';
import 'package:ma_for_feip/paged_dots/paged_dynamics_dots.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/theme_info.dart';

class CategoryFlexCatalog extends StatefulWidget {
  final MainCategory category;
  final List<ProductModel> products;

  const CategoryFlexCatalog({
    super.key,
    required this.category,
    required this.products,
  });

  @override
  State<CategoryFlexCatalog> createState() => _CategoryFlexCatalogState();
}

class _CategoryFlexCatalogState extends State<CategoryFlexCatalog> {
  late final PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.7);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool _isBuilded = false;

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      setState(() {
        _isBuilded = true;
      });
    });
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.category.name,
                style: ThemeInfo.labelLarge,
              ),
              const Spacer(),
              SizedBox(
                width: 70,
                height: 30,
                child: _isBuilded
                    ? PagedDynamicDots(
                        pageController: _controller,
                        length: widget.products.length,
                      )
                    : Container(),
              ),
            ],
          ),
        ),
        const SizedBox(height: ThemeInfo.elementsGap),
        LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: 350,
              child: PageView.builder(
                controller: _controller,
                itemBuilder: (BuildContext context, int index) {
                  if (index == widget.products.length) {
                    return ColoredBox(
                      color: const Color(0x20000000),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('Другое из этой категории'),
                            IconButton(
                              onPressed: () {
                                /* Route to category */
                              },
                              icon: const Icon(
                                Icons.read_more,
                                size: 70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  return SizedBox(
                    width: (constraints.maxWidth - 20) * 0.8,
                    child: SmallProductCard(
                      product: widget.products[index],
                      scaleFromBase: 0.8,
                    ),
                  );
                },
                itemCount: widget.products.length + 1,
              ),
            );
          },
        ),
      ],
    );
  }
}
