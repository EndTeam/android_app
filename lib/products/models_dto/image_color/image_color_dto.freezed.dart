// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_color_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageColorDTO _$ImageColorDTOFromJson(Map<String, dynamic> json) {
  return _ImageColorDTO.fromJson(json);
}

/// @nodoc
mixin _$ImageColorDTO {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'img_name')
  dynamic get imgName => throw _privateConstructorUsedError;
  NamedColorDTO get color => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  int get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageColorDTOCopyWith<ImageColorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageColorDTOCopyWith<$Res> {
  factory $ImageColorDTOCopyWith(
          ImageColorDTO value, $Res Function(ImageColorDTO) then) =
      _$ImageColorDTOCopyWithImpl<$Res, ImageColorDTO>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'img_name') dynamic imgName,
      NamedColorDTO color,
      String image,
      String name,
      @JsonKey(name: 'product') int productId});

  $NamedColorDTOCopyWith<$Res> get color;
}

/// @nodoc
class _$ImageColorDTOCopyWithImpl<$Res, $Val extends ImageColorDTO>
    implements $ImageColorDTOCopyWith<$Res> {
  _$ImageColorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imgName = freezed,
    Object? color = null,
    Object? image = null,
    Object? name = null,
    Object? productId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imgName: freezed == imgName
          ? _value.imgName
          : imgName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as NamedColorDTO,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NamedColorDTOCopyWith<$Res> get color {
    return $NamedColorDTOCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ImageColorDTOCopyWith<$Res>
    implements $ImageColorDTOCopyWith<$Res> {
  factory _$$_ImageColorDTOCopyWith(
          _$_ImageColorDTO value, $Res Function(_$_ImageColorDTO) then) =
      __$$_ImageColorDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'img_name') dynamic imgName,
      NamedColorDTO color,
      String image,
      String name,
      @JsonKey(name: 'product') int productId});

  @override
  $NamedColorDTOCopyWith<$Res> get color;
}

/// @nodoc
class __$$_ImageColorDTOCopyWithImpl<$Res>
    extends _$ImageColorDTOCopyWithImpl<$Res, _$_ImageColorDTO>
    implements _$$_ImageColorDTOCopyWith<$Res> {
  __$$_ImageColorDTOCopyWithImpl(
      _$_ImageColorDTO _value, $Res Function(_$_ImageColorDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imgName = freezed,
    Object? color = null,
    Object? image = null,
    Object? name = null,
    Object? productId = null,
  }) {
    return _then(_$_ImageColorDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imgName: freezed == imgName ? _value.imgName! : imgName,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as NamedColorDTO,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageColorDTO implements _ImageColorDTO {
  const _$_ImageColorDTO(
      {required this.id,
      @JsonKey(name: 'img_name') this.imgName = 'image',
      required this.color,
      required this.image,
      required this.name,
      @JsonKey(name: 'product') this.productId = 0});

  factory _$_ImageColorDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ImageColorDTOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'img_name')
  final dynamic imgName;
  @override
  final NamedColorDTO color;
  @override
  final String image;
  @override
  final String name;
  @override
  @JsonKey(name: 'product')
  final int productId;

  @override
  String toString() {
    return 'ImageColorDTO(id: $id, imgName: $imgName, color: $color, image: $image, name: $name, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageColorDTO &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.imgName, imgName) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(imgName),
      color,
      image,
      name,
      productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageColorDTOCopyWith<_$_ImageColorDTO> get copyWith =>
      __$$_ImageColorDTOCopyWithImpl<_$_ImageColorDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageColorDTOToJson(
      this,
    );
  }
}

abstract class _ImageColorDTO implements ImageColorDTO {
  const factory _ImageColorDTO(
      {required final int id,
      @JsonKey(name: 'img_name') final dynamic imgName,
      required final NamedColorDTO color,
      required final String image,
      required final String name,
      @JsonKey(name: 'product') final int productId}) = _$_ImageColorDTO;

  factory _ImageColorDTO.fromJson(Map<String, dynamic> json) =
      _$_ImageColorDTO.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'img_name')
  dynamic get imgName;
  @override
  NamedColorDTO get color;
  @override
  String get image;
  @override
  String get name;
  @override
  @JsonKey(name: 'product')
  int get productId;
  @override
  @JsonKey(ignore: true)
  _$$_ImageColorDTOCopyWith<_$_ImageColorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
