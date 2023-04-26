import 'package:flutter/material.dart';
import 'package:ma_for_feip/cart/cart_page.dart';
import 'package:ma_for_feip/catalog/catalog_page.dart';
import 'package:ma_for_feip/favorite/favorite_page.dart';
import 'package:ma_for_feip/products/models/named_color.dart';
import 'package:ma_for_feip/products/models/named_size.dart';
import 'package:ma_for_feip/products/models/product_model.dart';
import 'package:ma_for_feip/products/product_page/product_page.dart';
import 'package:ma_for_feip/profile/profile_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _pageIndex = 0;
  final _pages = [
    const CatalogPage(),
    const CartPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
          ),
          fontFamily: 'Montserrat',
          useMaterial3: true,
        ),
        home: ProductPage(productMock)
        // Column(
        //   children: [
        //     Expanded(child: _pages[_pageIndex]),
        //     _bottomNavigation(context),
        //   ],
        // ),
        );
  }

  void _changePage(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  Widget _bottomNavigation(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: _pageIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
      type: BottomNavigationBarType.fixed,
      onTap: _changePage,
      items: _pages
          .map(
            (p) => BottomNavigationBarItem(
              icon: p.icon,
              activeIcon: p.activeIcon,
              label: p.label,
            ),
          )
          .toList(),
    );
  }
}

final productMock = ProductModel(
  name: 'Жакет Weekend Max Mara ONDINA',
  images: [],
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
