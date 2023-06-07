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
  int get id => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

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
  $Res call({int id, int color, String name});
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
    Object? id = null,
    Object? color = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({int id, int color, String name});
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
    Object? id = null,
    Object? color = null,
    Object? name = null,
  }) {
    return _then(_$_NamedColorDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NamedColorDTO implements _NamedColorDTO {
  const _$_NamedColorDTO(
      {required this.id, required this.color, required this.name});

  factory _$_NamedColorDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NamedColorDTOFromJson(json);

  @override
  final int id;
  @override
  final int color;
  @override
  final String name;

  @override
  String toString() {
    return 'NamedColorDTO(id: $id, color: $color, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NamedColorDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, color, name);

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
      {required final int id,
      required final int color,
      required final String name}) = _$_NamedColorDTO;

  factory _NamedColorDTO.fromJson(Map<String, dynamic> json) =
      _$_NamedColorDTO.fromJson;

  @override
  int get id;
  @override
  int get color;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_NamedColorDTOCopyWith<_$_NamedColorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
