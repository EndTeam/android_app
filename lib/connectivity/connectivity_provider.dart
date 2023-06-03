import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConnectivityProvider extends StateNotifier<bool?> {
  ConnectivityProvider() : super(null) {
    _subscription =
        Connectivity().onConnectivityChanged.listen(_changeConnectivity);
  }

  late StreamSubscription _subscription;

  void _changeConnectivity(ConnectivityResult res) {
    switch (res) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
      case ConnectivityResult.ethernet:
      case ConnectivityResult.vpn:
      case ConnectivityResult.other:
        state = true;
        break;
      default:
        state = false;
        break;
    }
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
