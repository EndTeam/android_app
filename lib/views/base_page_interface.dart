import 'package:flutter/material.dart';

abstract class BasePageInterface extends StatelessWidget {
  const BasePageInterface({Key? key}) : super(key: key);

  abstract final Icon icon;
  abstract final Icon activeIcon;
  abstract final String label;
}
