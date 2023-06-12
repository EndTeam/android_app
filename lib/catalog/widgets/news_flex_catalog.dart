import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/catalog/widgets/small_product_card.dart';
import 'package:ma_for_feip/paged_dots/paged_dynamics_dots.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/theme_info.dart';

class OthersFlexCatalog extends ConsumerStatefulWidget {
  final FutureProvider<List<ProductModel>> provider;
  final String title;

  const OthersFlexCatalog({
    super.key,
    required this.provider,
    required this.title,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OthersFlexCatalogState();
}

class _OthersFlexCatalogState extends ConsumerState<OthersFlexCatalog> {
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
    final products = ref.watch(widget.provider);

    return products.when(
        data: (products) {
          WidgetsFlutterBinding.ensureInitialized()
              .addPostFrameCallback((timeStamp) {
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
                    Expanded(
                      child: AutoSizeText(
                        widget.title,
                        style: ThemeInfo.labelLarge,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                      height: 30,
                      child: _isBuilded
                          ? PagedDynamicDots(
                              pageController: _controller,
                              length: products.length,
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
                        if (index == products.length) {
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
                            product: products[index],
                          ),
                        );
                      },
                      itemCount: products.length + 1,
                    ),
                  );
                },
              ),
            ],
          );
        },
        error: (e, s) {
          debugPrint(e.toString());
          debugPrintStack(stackTrace: s);
          return Container();
        },
        loading: () => Container());
  }
}
