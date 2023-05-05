import 'package:flutter/painting.dart';
import 'package:ma_for_feip/products/models/named_color.dart';
import 'package:ma_for_feip/products/models_dto/named_color/named_color.dart';

class ColorMapper {
  static NamedColor fromSource(NamedColorDTO dto) {
    return NamedColor(Color(dto.color), dto.label);
  }
}
