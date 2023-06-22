import 'package:flutter/material.dart';
import 'package:ma_for_feip/base_page_interface.dart';
import 'package:ma_for_feip/theme_info.dart';

class ProfilePage extends BasePageInterface {
  const ProfilePage({super.key});

  @override
  Icon get activeIcon => const Icon(Icons.person_rounded);

  @override
  Icon get icon => const Icon(Icons.person_outline_rounded);

  @override
  String get label => 'Профиль';

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
