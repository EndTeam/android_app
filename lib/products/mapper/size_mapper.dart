import 'package:ma_for_feip/products/models/named_size.dart';
import 'package:ma_for_feip/products/models_dto/named_size/named_size.dart';

class SizeMapper {
  static NamedSize fromSource(NamedSizeDTO dto) {
    return NamedSize.fromStringSize(dto.size, dto.id);
  }
}
