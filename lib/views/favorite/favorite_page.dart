import 'package:flutter/material.dart';
import 'package:ma_for_feip/views/base_page_interface.dart';

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
    return Placeholder(
      child: Center(
        child: Text(label),
      ),
    );
  }
}
