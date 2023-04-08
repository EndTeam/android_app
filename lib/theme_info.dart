import 'package:flutter/material.dart';
import 'package:jugger/jugger.dart';

@singleton
class ThemeInfo {
  @inject
  ThemeInfo();

  init(BuildContext context) {
    theme = Theme.of(context);
    textTheme = theme.textTheme;
    colorSchema = theme.colorScheme;

    primaryTextColor = Colors.black;
    secondaryTextColor = Colors.grey;
    tertiaryTextColor = Colors.white;
  }

  late final ThemeData theme;
  late final TextTheme textTheme;
  late final ColorScheme colorSchema;

  final double elementsGap = 16.0;
  final double inListSeparator = 8.0;
  final double verticalPadding = 4.0;
  final double horizontalPadding = 8.0;

  final double smallRadius = 4;
  final double mediumRadius = 16;
  final double bigRadius = 32;

  late final Color primaryTextColor;
  late final Color secondaryTextColor;
  late final Color tertiaryTextColor;
}
