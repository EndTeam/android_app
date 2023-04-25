import 'package:flutter/material.dart';

class ThemeInfo {
  static const double elementsGap = 16.0;
  static const double inListSeparator = 8.0;
  static const double verticalPadding = 4.0;
  static const double horizontalPadding = 8.0;

  static const double smallRadius = 4;
  static const double mediumRadius = 16;
  static const double bigRadius = 32;

  static const Color primaryTextColor = Colors.black;
  static const Color secondaryTextColor = Colors.grey;
  static const Color tertiaryTextColor = Colors.white;
  static const Color primaryColor = Colors.white;
  static const Color secondaryColor = Colors.white70;
  static const Color tertiaryColor = Colors.white10;

  // textStyles
  static const TextStyle titleLarge = TextStyle(
    color: primaryColor,
    fontSize: 36,
    decoration: TextDecoration.none,
    fontFamily: 'Cormorant',
  );

  static const TextStyle labelSmall = TextStyle(
    color: primaryColor,
    fontSize: 12,
    decoration: TextDecoration.none,
  );

  static const TextStyle labelLarge = TextStyle(
    color: primaryColor,
    fontSize: 26,
    decoration: TextDecoration.none,
  );

  static const TextStyle bodyLarge = TextStyle(
    color: primaryColor,
    fontSize: 20,
    decoration: TextDecoration.none,
  );
}
