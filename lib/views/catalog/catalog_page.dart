import 'package:flutter/material.dart';
import 'package:ma_for_feip/views/base_page_interface.dart';

class CatalogPage extends BasePageInterface {
  @override
  Icon get activeIcon => const Icon(Icons.manage_search_rounded);

  @override
  Icon get icon => const Icon(Icons.manage_search_rounded);

  @override
  String get label => 'Каталог';

  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Center(
        child: Text('catalog page'),
      ),
    );
  }
}
