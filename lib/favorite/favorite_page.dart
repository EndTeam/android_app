import 'package:flutter/material.dart';
import 'package:ma_for_feip/base_page_interface.dart';
import 'package:ma_for_feip/theme_info.dart';

class FavoritePage extends BasePageInterface {
  @override
  Icon get activeIcon => const Icon(Icons.favorite_rounded);

  @override
  Icon get icon => const Icon(Icons.favorite_border_rounded);

  @override
  String get label => 'Избранное';

  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Необходимо войти или зарегестрироваться',
            textAlign: TextAlign.center,
            style: ThemeInfo.labelLarge,
          ),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: const Text('Регистрация')),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: const Text('Вход')),
        ],
      ),
    );
  }
}
