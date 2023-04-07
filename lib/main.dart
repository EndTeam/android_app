import 'package:flutter/material.dart';
import 'package:ma_for_feip/app_component.dart';
import 'package:ma_for_feip/app_component.jugger.dart';

import 'views/app.dart';

late final AppComponent appComponent;
bool dependenciesInited = false;

void main() {
  appComponent = JuggerAppComponent.create();
  runApp(const App());
}
