// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'named_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NamedSizeDTO _$NamedSizeDTOFromJson(Map<String, dynamic> json) {
  return _NamedSizeDTO.fromJson(json);
}

/// @nodoc
mixin _$NamedSizeDTO {
  int get id => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamedSizeDTOCopyWith<NamedSizeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamedSizeDTOCopyWith<$Res> {
  factory $NamedSizeDTOCopyWith(
          NamedSizeDTO value, $Res Function(NamedSizeDTO) then) =
      _$NamedSizeDTOCopyWithImpl<$Res, NamedSizeDTO>;
  @useResult
  $Res call({int id, String size});
}

/// @nodoc
class _$NamedSizeDTOCopyWithImpl<$Res, $Val extends NamedSizeDTO>
    implements $NamedSizeDTOCopyWith<$Res> {
  _$NamedSizeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NamedSizeDTOCopyWith<$Res>
    implements $NamedSizeDTOCopyWith<$Res> {
  factory _$$_NamedSizeDTOCopyWith(
          _$_NamedSizeDTO value, $Res Function(_$_NamedSizeDTO) then) =
      __$$_NamedSizeDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String size});
}

/// @nodoc
class __$$_NamedSizeDTOCopyWithImpl<$Res>
    extends _$NamedSizeDTOCopyWithImpl<$Res, _$_NamedSizeDTO>
    implements _$$_NamedSizeDTOCopyWith<$Res> {
  __$$_NamedSizeDTOCopyWithImpl(
      _$_NamedSizeDTO _value, $Res Function(_$_NamedSizeDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
  }) {
    return _then(_$_NamedSizeDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NamedSizeDTO implements _NamedSizeDTO {
  const _$_NamedSizeDTO({required this.id, required this.size});

  factory _$_NamedSizeDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NamedSizeDTOFromJson(json);

  @override
  final int id;
  @override
  final String size;

  @override
  String toString() {
    return 'NamedSizeDTO(id: $id, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NamedSizeDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NamedSizeDTOCopyWith<_$_NamedSizeDTO> get copyWith =>
      __$$_NamedSizeDTOCopyWithImpl<_$_NamedSizeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NamedSizeDTOToJson(
      this,
    );
  }
}

abstract class _NamedSizeDTO implements NamedSizeDTO {
  const factory _NamedSizeDTO(
      {required final int id, required final String size}) = _$_NamedSizeDTO;

  factory _NamedSizeDTO.fromJson(Map<String, dynamic> json) =
      _$_NamedSizeDTO.fromJson;

  @override
  int get id;
  @override
  String get size;
  @override
  @JsonKey(ignore: true)
  _$$_NamedSizeDTOCopyWith<_$_NamedSizeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
