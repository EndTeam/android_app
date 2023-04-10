import 'package:flutter/material.dart';
import 'package:ma_for_feip/main.dart';
import 'package:ma_for_feip/models/named_color.dart';
import 'package:ma_for_feip/models/named_size.dart';
import 'package:ma_for_feip/models/products/product.dart';
import 'package:ma_for_feip/views/cart/cart_page.dart';
import 'package:ma_for_feip/views/catalog/catalog_page.dart';
import 'package:ma_for_feip/views/favorite/favorite_page.dart';
import 'package:ma_for_feip/views/profile/profile_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _readyToWork = false;

  int _pageIndex = 0;
  final _pages = [
    const CatalogPage(),
    const CartPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

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
          ? Column(
              children: [
                Expanded(child: _pages[_pageIndex]),
                _bottomNavigation(context),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
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
