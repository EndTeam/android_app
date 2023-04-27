import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ma_for_feip/app.dart';
import 'package:ma_for_feip/firebase_init.dart';
import 'package:ma_for_feip/service_locator/app_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await firebaseInit();

  await AppLocator.instance.init();

  runApp(const ProviderScope(child: App()));
}
