import 'package:ma_for_feip/products/models/brand.dart';
import 'package:ma_for_feip/products/models_dto/brand/brand_dto.dart';

class BrandMapper {
  static Brand fromSource(BrandDTO dto) {
    return Brand(id: dto.id, name: dto.name);
  }
}
