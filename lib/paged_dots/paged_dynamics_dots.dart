import 'dart:math';

import 'package:flutter/material.dart';

class PagedDynamicDots extends StatefulWidget {
  final PageController pageController;
  final int length;

  const PagedDynamicDots(
      {super.key, required this.pageController, required this.length});

  @override
  State<PagedDynamicDots> createState() => _PagedDynamicDotsState();
}

class _PagedDynamicDotsState extends State<PagedDynamicDots> {
  final _colorsTween = ColorTween(begin: Colors.transparent, end: Colors.black);

  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(_update);
  }

  void _update() {
    setState(() {});
  }

  @override
  void dispose() {
    widget.pageController.removeListener(_update);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return LayoutBuilder(
      builder: (context, constraints) {
        final diam = min(constraints.maxWidth / 10, constraints.maxHeight);
        return Stack(
          children: [
            for (int i = 0; i < widget.length; ++i)
              Builder(
                builder: (BuildContext context) {
                  final diff = min(
                      max(
                          0.0,
                          1.0 -
                              ((widget.pageController.page ?? 0) - i).abs() /
                                  3.0),
                      1.0);
                  final d = diam * diff;
                  final startOffset = widget.pageController.page ?? 0;
                  return Positioned(
                    top: (constraints.maxHeight - d) / 2,
                    left: 2 * diam * (i - startOffset) +
                        (constraints.maxWidth - (diam * 5)),
                    child: Container(
                      width: d,
                      height: d,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _colorsTween.lerp(diff),
                      ),
                    ),
                  );
                },
              ),
          ],
        );
      },
    );
  }
}