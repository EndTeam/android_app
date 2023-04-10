import 'package:flutter/material.dart';
import 'package:ma_for_feip/views/base_page_interface.dart';

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
    return Placeholder(
      child: Center(
        child: Text(label),
      ),
    );
  }
}
