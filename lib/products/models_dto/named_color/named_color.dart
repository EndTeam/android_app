import 'package:freezed_annotation/freezed_annotation.dart';

part 'named_color.freezed.dart';

part 'named_color.g.dart';

@freezed
class NamedColorDTO with _$NamedColorDTO {
  const factory NamedColorDTO({
    required final int color,
    required final int label,
  }) = _NamedColorDTO;

  factory NamedColorDTO.fromJson(Map<String, dynamic> json) =>
      _$NamedColorDTOFromJson(json);
}
