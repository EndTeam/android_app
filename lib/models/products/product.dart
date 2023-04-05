import 'dart:typed_data';

import 'package:flutter/painting.dart';

import 'package:ma_for_feip/models/size.dart';

class Product {
  final String name;
  final List<Uint8List> images;
  final List<String> tags;
  final bool isNew;
  final int cost;
  final int oldCost;
  final List<Color> colors;
  final List<Size> sizes;
  final List<String> description;

  Product({
    required this.name,
    required this.images,
    required this.tags,
    required this.isNew,
    required this.cost,
    required this.oldCost,
    required this.colors,
    required this.sizes,
    required this.description,
  });
}

/** JSON schema
    {
      "name": "string",
      "images": [
        {"url": "string"},
      ],
      "tags": [
        {"name: "string"},
      ],
      "is_new": "bool",
      "cost": "int",
      "old_cost" "int",
      "colors": [
        {"color": "int"},
      ],
      "sizes": [
        "size": "string",
      ],
      "description": [
        "entry": "string",
      ]
    }
 */
