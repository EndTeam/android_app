import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ma_for_feip/main.dart';
import 'package:ma_for_feip/models/named_color.dart';
import 'package:ma_for_feip/models/named_size.dart';
import 'package:ma_for_feip/models/products/product.dart';
import 'package:ma_for_feip/providers/product_page/product_page_provider.dart';
import 'package:ma_for_feip/views/products/product_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _readyToWork = false;

  _initializeDependencies(BuildContext context) {
    appComponent.themeInfo().init(context);
    setState(() {
      _readyToWork = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!dependenciesInited) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _initializeDependencies(context));
      dependenciesInited = true;
    }
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
        ),
        fontFamily: 'Montserrat',
        useMaterial3: true,
      ),
      home: _readyToWork
          ? BlocProvider(
              create: (_) => ProductPageProvider(productMock),
              child: ProductPage(),
            )
          : Container(),
    );
  }
}

final productMock = Product(
  name: 'Жакет Weekend Max Mara ONDINA',
  images: [],
  tags: ['Идеи для подарков', 'Max Mara Weekend'],
  isNew: true,
  cost: 5600000,
  oldCost: 15600000,
  colors: [
    NamedColor(Colors.blue, 'Голубой'),
    NamedColor(Colors.white, 'Белый'),
    NamedColor(Colors.grey, 'Серый'),
    NamedColor(Colors.brown, 'Коричневый'),
    NamedColor(Colors.green, 'Зеленый'),
  ],
  sizes: [
    NamedSize.xs(false),
    NamedSize.s(false),
    NamedSize.m(false),
    NamedSize.l(false),
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
