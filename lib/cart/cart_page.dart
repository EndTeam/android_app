import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/base_page_interface.dart';
import 'package:ma_for_feip/service_locator/app_locator.dart';
import 'package:ma_for_feip/theme_info.dart';
import 'package:ma_for_feip/widgets/add_cart_btn.dart';

class CartPage extends BasePageInterface {
  const CartPage({Key? key}) : super(key: key);

  @override
  Icon get activeIcon => const Icon(Icons.shopping_bag_rounded);

  @override
  Icon get icon => const Icon(Icons.shopping_bag_outlined);

  @override
  String get label => 'Корзина';

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final cartInstance = ref.watch(
          AppLocator.instance.cartProvider.select(
            (value) => value.products,
          ),
        );
        final keys = cartInstance.keys.toList();
        return Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 16),
              child: Text(
                'Корзина',
                style: ThemeInfo.titleLarge,
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 40,
                          child: Image.network(keys[index].images.first),
                        ),
                        const SizedBox(width: 4),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              keys[index].name,
                              style: ThemeInfo.bodyLarge,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              keys[index].article,
                              style: ThemeInfo.labelSmall,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(cartInstance[keys[index]].toString()),
                        IconButton(
                          onPressed: () {
                            ref
                                .read(AppLocator.instance.cartProvider.notifier)
                                .removeFromCart(
                                  keys[index],
                                );
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (_, __) => const Divider(),
                itemCount: cartInstance.length,
              ),
            ),
          ],
        );
      },
    );
  }
}
