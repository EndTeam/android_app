import 'package:flutter/material.dart';
import 'package:ma_for_feip/products/models/named_color.dart';
import 'package:ma_for_feip/products/models/named_size.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
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
        fontFamily: 'Montserrat',
        useMaterial3: true,
      ),
      routerConfig: AppRouter.router,
    );
  }
}

final productMock = ProductModel(
  name: 'Жакет Weekend Max Mara ONDINA',
  images: [
    'https://sheily.ru/wp-content/webpc-passthru.php?src=https://sheily.ru/wp-content/uploads/2020/11/334-115-kemel-1.jpg&nocache=1'
  ],
  tags: ['Идеи для подарков', 'Max Mara Weekend'],
  isNew: true,
  cost: 5600000,
  oldCost: 15600000,
  colors: [
    const NamedColor(Colors.blue, 'Голубой'),
    const NamedColor(Colors.white, 'Белый'),
    const NamedColor(Colors.grey, 'Серый'),
    const NamedColor(Colors.brown, 'Коричневый'),
    const NamedColor(Colors.green, 'Зеленый'),
  ],
  sizes: [
    NamedSize.fromStringSize('XS'),
    NamedSize.fromStringSize('S'),
    NamedSize.fromStringSize('M'),
    NamedSize.fromStringSize('L'),
  ],
  description: [
    'Жакет с поясом',
    'Длинный двубортный плащ с поясом',
    'Коктека на спине',
    'Застежка на три ряда пуговик',
    'Два внешних кармана',
    'Регулируемые паты на рукавах',
    'Высокая встречная складка',
    'Длина: 123.6 см',
  ],
);
