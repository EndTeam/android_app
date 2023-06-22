import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/catalog/widgets/small_product_card.dart';
import 'package:ma_for_feip/paged_dots/paged_dynamics_dots.dart';
import 'package:ma_for_feip/service_locator/app_locator.dart';
import 'package:ma_for_feip/theme_info.dart';

class SimilarItems extends ConsumerStatefulWidget {
  const SimilarItems({super.key});

  @override
  ConsumerState<SimilarItems> createState() => _SimilarItemsState();
}

class _SimilarItemsState extends ConsumerState<SimilarItems> {
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

    final prods = ref.read(AppLocator.instance.catalogPageProvider);
    return prods.map(
      (value) {
        final prods = value.products.values.first;
        return Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Вам может понравиться',
                    style: ThemeInfo.bodyLarge,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 70,
                    height: 30,
                    child: _isBuilded
                        ? PagedDynamicDots(
                            pageController: _controller,
                            length: prods.length,
                          )
                        : Container(),
                  ),
                ],
              ),
            ),
            LayoutBuilder(builder: (context, constraints) {
              return SizedBox(
                height: 400,
                child: PageView.builder(
                  controller: _controller,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: (constraints.maxWidth - 20) * 0.8,
                      child: SmallProductCard(
                        product: prods[index],
                        scaleFromBase: 0.8,
                      ),
                    );
                  },
                  itemCount: prods.length,
                ),
              );
            }),
          ],
        );
      },
      error: (_) => Container(),
      loading: (_) => Container(),
    );
  }
}
