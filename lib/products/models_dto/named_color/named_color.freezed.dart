// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'named_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NamedColorDTO _$NamedColorDTOFromJson(Map<String, dynamic> json) {
  return _NamedColorDTO.fromJson(json);
}

/// @nodoc
mixin _$NamedColorDTO {
  int get color => throw _privateConstructorUsedError;
  int get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamedColorDTOCopyWith<NamedColorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamedColorDTOCopyWith<$Res> {
  factory $NamedColorDTOCopyWith(
          NamedColorDTO value, $Res Function(NamedColorDTO) then) =
      _$NamedColorDTOCopyWithImpl<$Res, NamedColorDTO>;
  @useResult
  $Res call({int color, int label});
}

/// @nodoc
class _$NamedColorDTOCopyWithImpl<$Res, $Val extends NamedColorDTO>
    implements $NamedColorDTOCopyWith<$Res> {
  _$NamedColorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NamedColorDTOCopyWith<$Res>
    implements $NamedColorDTOCopyWith<$Res> {
  factory _$$_NamedColorDTOCopyWith(
          _$_NamedColorDTO value, $Res Function(_$_NamedColorDTO) then) =
      __$$_NamedColorDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int color, int label});
}

/// @nodoc
class __$$_NamedColorDTOCopyWithImpl<$Res>
    extends _$NamedColorDTOCopyWithImpl<$Res, _$_NamedColorDTO>
    implements _$$_NamedColorDTOCopyWith<$Res> {
  __$$_NamedColorDTOCopyWithImpl(
      _$_NamedColorDTO _value, $Res Function(_$_NamedColorDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? label = null,
  }) {
    return _then(_$_NamedColorDTO(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NamedColorDTO implements _NamedColorDTO {
  const _$_NamedColorDTO({required this.color, required this.label});

  factory _$_NamedColorDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NamedColorDTOFromJson(json);

  @override
  final int color;
  @override
  final int label;

  @override
  String toString() {
    return 'NamedColorDTO(color: $color, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NamedColorDTO &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NamedColorDTOCopyWith<_$_NamedColorDTO> get copyWith =>
      __$$_NamedColorDTOCopyWithImpl<_$_NamedColorDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NamedColorDTOToJson(
      this,
    );
  }
}

abstract class _NamedColorDTO implements NamedColorDTO {
  const factory _NamedColorDTO(
      {required final int color, required final int label}) = _$_NamedColorDTO;

  factory _NamedColorDTO.fromJson(Map<String, dynamic> json) =
      _$_NamedColorDTO.fromJson;

  @override
  int get color;
  @override
  int get label;
  @override
  @JsonKey(ignore: true)
  _$$_NamedColorDTOCopyWith<_$_NamedColorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
