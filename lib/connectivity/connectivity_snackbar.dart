import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/service_locator/app_locator.dart';

class ConnectivitySnackBar extends ConsumerWidget {
  const ConnectivitySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(AppLocator.instance.connectivityProvider, (previous, next) {
      if (previous == null || previous == false && next == true) {
        const snack = SnackBar(
          content: Text('Кажется, что нет интернета'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snack);
      }
    });
    return const Placeholder();
  }
}
