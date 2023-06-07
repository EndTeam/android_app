import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_dto.freezed.dart';

part 'brand_dto.g.dart';

@freezed
class BrandDTO with _$BrandDTO {
  const factory BrandDTO({
    required final int id,
    required final String name,
  }) = _BrandDTO;

  factory BrandDTO.fromJson(Map<String, dynamic> json) =>
      _$BrandDTOFromJson(json);
}
