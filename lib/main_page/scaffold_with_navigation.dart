import 'package:flutter/material.dart';
import 'package:ma_for_feip/base_page_interface.dart';

class ScaffoldWithNavigation extends StatefulWidget {
  final List<BasePageInterface> pages;

  const ScaffoldWithNavigation({
    Key? key,
    required this.pages,
  }) : super(key: key);

  @override
  State<ScaffoldWithNavigation> createState() => _ScaffoldWithNavigationState();
}

class _ScaffoldWithNavigationState extends State<ScaffoldWithNavigation> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _changePage,
        currentIndex: _pageIndex,
        items: widget.pages
            .map(
              (e) => BottomNavigationBarItem(
                label: e.label,
                icon: e.icon,
                activeIcon: e.activeIcon,
              ),
            )
            .toList(),
      ),
      body: widget.pages[_pageIndex],
    );
  }

  void _changePage(int newPage) {
    if (newPage == _pageIndex) {
      return;
    } else {
      setState(() {
        _pageIndex = newPage;
      });
    }
  }
}
