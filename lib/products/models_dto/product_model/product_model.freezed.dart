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
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get article => throw _privateConstructorUsedError;
  @JsonKey(name: 'new')
  bool get isNew => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale')
  bool get sale => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_cost')
  double? get saleCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_color')
  List<ImageColorDTO> get imageColor => throw _privateConstructorUsedError;
  List<NamedSizeDTO> get size => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  BrandDTO get brand => throw _privateConstructorUsedError;
  CategoryDTO get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorite')
  bool get isFavorite => throw _privateConstructorUsedError;

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
      {int id,
      String name,
      String article,
      @JsonKey(name: 'new') bool isNew,
      @JsonKey(name: 'sale') bool sale,
      double cost,
      @JsonKey(name: 'sale_cost') double? saleCost,
      @JsonKey(name: 'image_color') List<ImageColorDTO> imageColor,
      List<NamedSizeDTO> size,
      String description,
      BrandDTO brand,
      CategoryDTO category,
      @JsonKey(name: 'is_favorite') bool isFavorite});

  $BrandDTOCopyWith<$Res> get brand;
  $CategoryDTOCopyWith<$Res> get category;
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
    Object? id = null,
    Object? name = null,
    Object? article = null,
    Object? isNew = null,
    Object? sale = null,
    Object? cost = null,
    Object? saleCost = freezed,
    Object? imageColor = null,
    Object? size = null,
    Object? description = null,
    Object? brand = null,
    Object? category = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      sale: null == sale
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as bool,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      saleCost: freezed == saleCost
          ? _value.saleCost
          : saleCost // ignore: cast_nullable_to_non_nullable
              as double?,
      imageColor: null == imageColor
          ? _value.imageColor
          : imageColor // ignore: cast_nullable_to_non_nullable
              as List<ImageColorDTO>,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as List<NamedSizeDTO>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandDTO,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDTO,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandDTOCopyWith<$Res> get brand {
    return $BrandDTOCopyWith<$Res>(_value.brand, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDTOCopyWith<$Res> get category {
    return $CategoryDTOCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
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
      {int id,
      String name,
      String article,
      @JsonKey(name: 'new') bool isNew,
      @JsonKey(name: 'sale') bool sale,
      double cost,
      @JsonKey(name: 'sale_cost') double? saleCost,
      @JsonKey(name: 'image_color') List<ImageColorDTO> imageColor,
      List<NamedSizeDTO> size,
      String description,
      BrandDTO brand,
      CategoryDTO category,
      @JsonKey(name: 'is_favorite') bool isFavorite});

  @override
  $BrandDTOCopyWith<$Res> get brand;
  @override
  $CategoryDTOCopyWith<$Res> get category;
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
    Object? id = null,
    Object? name = null,
    Object? article = null,
    Object? isNew = null,
    Object? sale = null,
    Object? cost = null,
    Object? saleCost = freezed,
    Object? imageColor = null,
    Object? size = null,
    Object? description = null,
    Object? brand = null,
    Object? category = null,
    Object? isFavorite = null,
  }) {
    return _then(_$_ProductModelDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      sale: null == sale
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as bool,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      saleCost: freezed == saleCost
          ? _value.saleCost
          : saleCost // ignore: cast_nullable_to_non_nullable
              as double?,
      imageColor: null == imageColor
          ? _value._imageColor
          : imageColor // ignore: cast_nullable_to_non_nullable
              as List<ImageColorDTO>,
      size: null == size
          ? _value._size
          : size // ignore: cast_nullable_to_non_nullable
              as List<NamedSizeDTO>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandDTO,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDTO,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModelDTO implements _ProductModelDTO {
  const _$_ProductModelDTO(
      {required this.id,
      required this.name,
      required this.article,
      @JsonKey(name: 'new')
          required this.isNew,
      @JsonKey(name: 'sale')
          required this.sale,
      required this.cost,
      @JsonKey(name: 'sale_cost')
          this.saleCost,
      @JsonKey(name: 'image_color')
          required final List<ImageColorDTO> imageColor,
      required final List<NamedSizeDTO> size,
      required this.description,
      required this.brand,
      required this.category,
      @JsonKey(name: 'is_favorite')
          required this.isFavorite})
      : _imageColor = imageColor,
        _size = size;

  factory _$_ProductModelDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String article;
  @override
  @JsonKey(name: 'new')
  final bool isNew;
  @override
  @JsonKey(name: 'sale')
  final bool sale;
  @override
  final double cost;
  @override
  @JsonKey(name: 'sale_cost')
  final double? saleCost;
  final List<ImageColorDTO> _imageColor;
  @override
  @JsonKey(name: 'image_color')
  List<ImageColorDTO> get imageColor {
    if (_imageColor is EqualUnmodifiableListView) return _imageColor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageColor);
  }

  final List<NamedSizeDTO> _size;
  @override
  List<NamedSizeDTO> get size {
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_size);
  }

  @override
  final String description;
  @override
  final BrandDTO brand;
  @override
  final CategoryDTO category;
  @override
  @JsonKey(name: 'is_favorite')
  final bool isFavorite;

  @override
  String toString() {
    return 'ProductModelDTO(id: $id, name: $name, article: $article, isNew: $isNew, sale: $sale, cost: $cost, saleCost: $saleCost, imageColor: $imageColor, size: $size, description: $description, brand: $brand, category: $category, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModelDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.sale, sale) || other.sale == sale) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.saleCost, saleCost) ||
                other.saleCost == saleCost) &&
            const DeepCollectionEquality()
                .equals(other._imageColor, _imageColor) &&
            const DeepCollectionEquality().equals(other._size, _size) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      article,
      isNew,
      sale,
      cost,
      saleCost,
      const DeepCollectionEquality().hash(_imageColor),
      const DeepCollectionEquality().hash(_size),
      description,
      brand,
      category,
      isFavorite);

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
      {required final int id,
      required final String name,
      required final String article,
      @JsonKey(name: 'new')
          required final bool isNew,
      @JsonKey(name: 'sale')
          required final bool sale,
      required final double cost,
      @JsonKey(name: 'sale_cost')
          final double? saleCost,
      @JsonKey(name: 'image_color')
          required final List<ImageColorDTO> imageColor,
      required final List<NamedSizeDTO> size,
      required final String description,
      required final BrandDTO brand,
      required final CategoryDTO category,
      @JsonKey(name: 'is_favorite')
          required final bool isFavorite}) = _$_ProductModelDTO;

  factory _ProductModelDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductModelDTO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get article;
  @override
  @JsonKey(name: 'new')
  bool get isNew;
  @override
  @JsonKey(name: 'sale')
  bool get sale;
  @override
  double get cost;
  @override
  @JsonKey(name: 'sale_cost')
  double? get saleCost;
  @override
  @JsonKey(name: 'image_color')
  List<ImageColorDTO> get imageColor;
  @override
  List<NamedSizeDTO> get size;
  @override
  String get description;
  @override
  BrandDTO get brand;
  @override
  CategoryDTO get category;
  @override
  @JsonKey(name: 'is_favorite')
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelDTOCopyWith<_$_ProductModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
