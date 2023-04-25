// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModelDTO _$ProductModelDTOFromJson(Map<String, dynamic> json) {
  return _ProductModelDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductModelDTO {
  String get name => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  int? get oldCost => throw _privateConstructorUsedError;
  List<NamedColorDTO> get colors => throw _privateConstructorUsedError;
  List<NamedSizeDTO> get sizes => throw _privateConstructorUsedError;
  List<String> get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelDTOCopyWith<ProductModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelDTOCopyWith<$Res> {
  factory $ProductModelDTOCopyWith(
          ProductModelDTO value, $Res Function(ProductModelDTO) then) =
      _$ProductModelDTOCopyWithImpl<$Res, ProductModelDTO>;
  @useResult
  $Res call(
      {String name,
      List<String> images,
      List<String> tags,
      bool isNew,
      int cost,
      int? oldCost,
      List<NamedColorDTO> colors,
      List<NamedSizeDTO> sizes,
      List<String> description});
}

/// @nodoc
class _$ProductModelDTOCopyWithImpl<$Res, $Val extends ProductModelDTO>
    implements $ProductModelDTOCopyWith<$Res> {
  _$ProductModelDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? images = null,
    Object? tags = null,
    Object? isNew = null,
    Object? cost = null,
    Object? oldCost = freezed,
    Object? colors = null,
    Object? sizes = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      oldCost: freezed == oldCost
          ? _value.oldCost
          : oldCost // ignore: cast_nullable_to_non_nullable
              as int?,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<NamedColorDTO>,
      sizes: null == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<NamedSizeDTO>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductModelDTOCopyWith<$Res>
    implements $ProductModelDTOCopyWith<$Res> {
  factory _$$_ProductModelDTOCopyWith(
          _$_ProductModelDTO value, $Res Function(_$_ProductModelDTO) then) =
      __$$_ProductModelDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<String> images,
      List<String> tags,
      bool isNew,
      int cost,
      int? oldCost,
      List<NamedColorDTO> colors,
      List<NamedSizeDTO> sizes,
      List<String> description});
}

/// @nodoc
class __$$_ProductModelDTOCopyWithImpl<$Res>
    extends _$ProductModelDTOCopyWithImpl<$Res, _$_ProductModelDTO>
    implements _$$_ProductModelDTOCopyWith<$Res> {
  __$$_ProductModelDTOCopyWithImpl(
      _$_ProductModelDTO _value, $Res Function(_$_ProductModelDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? images = null,
    Object? tags = null,
    Object? isNew = null,
    Object? cost = null,
    Object? oldCost = freezed,
    Object? colors = null,
    Object? sizes = null,
    Object? description = null,
  }) {
    return _then(_$_ProductModelDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      oldCost: freezed == oldCost
          ? _value.oldCost
          : oldCost // ignore: cast_nullable_to_non_nullable
              as int?,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<NamedColorDTO>,
      sizes: null == sizes
          ? _value._sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<NamedSizeDTO>,
      description: null == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModelDTO implements _ProductModelDTO {
  const _$_ProductModelDTO(
      {required this.name,
      required final List<String> images,
      required final List<String> tags,
      required this.isNew,
      required this.cost,
      required this.oldCost,
      required final List<NamedColorDTO> colors,
      required final List<NamedSizeDTO> sizes,
      required final List<String> description})
      : _images = images,
        _tags = tags,
        _colors = colors,
        _sizes = sizes,
        _description = description;

  factory _$_ProductModelDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelDTOFromJson(json);

  @override
  final String name;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final bool isNew;
  @override
  final int cost;
  @override
  final int? oldCost;
  final List<NamedColorDTO> _colors;
  @override
  List<NamedColorDTO> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  final List<NamedSizeDTO> _sizes;
  @override
  List<NamedSizeDTO> get sizes {
    if (_sizes is EqualUnmodifiableListView) return _sizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sizes);
  }

  final List<String> _description;
  @override
  List<String> get description {
    if (_description is EqualUnmodifiableListView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_description);
  }

  @override
  String toString() {
    return 'ProductModelDTO(name: $name, images: $images, tags: $tags, isNew: $isNew, cost: $cost, oldCost: $oldCost, colors: $colors, sizes: $sizes, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModelDTO &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.oldCost, oldCost) || other.oldCost == oldCost) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality().equals(other._sizes, _sizes) &&
            const DeepCollectionEquality()
                .equals(other._description, _description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_tags),
      isNew,
      cost,
      oldCost,
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(_sizes),
      const DeepCollectionEquality().hash(_description));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelDTOCopyWith<_$_ProductModelDTO> get copyWith =>
      __$$_ProductModelDTOCopyWithImpl<_$_ProductModelDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelDTOToJson(
      this,
    );
  }
}

abstract class _ProductModelDTO implements ProductModelDTO {
  const factory _ProductModelDTO(
      {required final String name,
      required final List<String> images,
      required final List<String> tags,
      required final bool isNew,
      required final int cost,
      required final int? oldCost,
      required final List<NamedColorDTO> colors,
      required final List<NamedSizeDTO> sizes,
      required final List<String> description}) = _$_ProductModelDTO;

  factory _ProductModelDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductModelDTO.fromJson;

  @override
  String get name;
  @override
  List<String> get images;
  @override
  List<String> get tags;
  @override
  bool get isNew;
  @override
  int get cost;
  @override
  int? get oldCost;
  @override
  List<NamedColorDTO> get colors;
  @override
  List<NamedSizeDTO> get sizes;
  @override
  List<String> get description;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelDTOCopyWith<_$_ProductModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
