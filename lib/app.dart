import 'package:flutter/material.dart';
import 'package:ma_for_feip/router/router.dart';
import 'package:ma_for_feip/theme_info.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          primary: ThemeInfo.primaryColor,
          secondary: ThemeInfo.secondaryColor,
          tertiary: ThemeInfo.tertiaryColor,
          onBackground: Colors.black,
          onPrimary: Colors.black,
        ),
        bottomNavigationBarTheme: ThemeInfo.bottomNavigationBarThemeData,
        elevatedButtonTheme: ThemeInfo.elevatedButtonThemeData,
        fontFamily: 'Montserrat',
        useMaterial3: true,
      ),
      routerConfig: AppRouter.router,
    );
  }
}
