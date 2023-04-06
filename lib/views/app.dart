import 'package:flutter/material.dart';
import 'package:ma_for_feip/models/products/product.dart';
import 'package:ma_for_feip/models/size.dart';
import 'package:ma_for_feip/views/products/product_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white, primary: Colors.grey),
          fontFamily: 'Montserrat',
          useMaterial3: true,
        ),
        home: ProductPage(
          product: productMock,
        ));
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
    Colors.blue,
    Colors.white,
    Colors.grey,
    Colors.brown,
    Colors.green,
  ],
  sizes: [
    Size.xs(false),
    Size.s(false),
    Size.m(false),
    Size.l(false),
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
