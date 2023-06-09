import 'package:freezed_annotation/freezed_annotation.dart';

part 'named_size.freezed.dart';

part 'named_size.g.dart';

@freezed
class NamedSizeDTO with _$NamedSizeDTO {
  const factory NamedSizeDTO({
    required final int id,
    required String size,
  }) = _NamedSizeDTO;

  factory NamedSizeDTO.fromJson(Map<String, dynamic> json) =>
      _$NamedSizeDTOFromJson(json);
}
