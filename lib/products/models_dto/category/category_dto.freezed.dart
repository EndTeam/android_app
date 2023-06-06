// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDTO _$CategoryDTOFromJson(Map<String, dynamic> json) {
  return _CategoryDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoryDTO {
  int get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_category')
  int get mainCategoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDTOCopyWith<CategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDTOCopyWith<$Res> {
  factory $CategoryDTOCopyWith(
          CategoryDTO value, $Res Function(CategoryDTO) then) =
      _$CategoryDTOCopyWithImpl<$Res, CategoryDTO>;
  @useResult
  $Res call(
      {int id,
      String category,
      @JsonKey(name: 'main_category') int mainCategoryId});
}

/// @nodoc
class _$CategoryDTOCopyWithImpl<$Res, $Val extends CategoryDTO>
    implements $CategoryDTOCopyWith<$Res> {
  _$CategoryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? mainCategoryId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      mainCategoryId: null == mainCategoryId
          ? _value.mainCategoryId
          : mainCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryDTOCopyWith<$Res>
    implements $CategoryDTOCopyWith<$Res> {
  factory _$$_CategoryDTOCopyWith(
          _$_CategoryDTO value, $Res Function(_$_CategoryDTO) then) =
      __$$_CategoryDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String category,
      @JsonKey(name: 'main_category') int mainCategoryId});
}

/// @nodoc
class __$$_CategoryDTOCopyWithImpl<$Res>
    extends _$CategoryDTOCopyWithImpl<$Res, _$_CategoryDTO>
    implements _$$_CategoryDTOCopyWith<$Res> {
  __$$_CategoryDTOCopyWithImpl(
      _$_CategoryDTO _value, $Res Function(_$_CategoryDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? mainCategoryId = null,
  }) {
    return _then(_$_CategoryDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      mainCategoryId: null == mainCategoryId
          ? _value.mainCategoryId
          : mainCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryDTO implements _CategoryDTO {
  const _$_CategoryDTO(
      {required this.id,
      required this.category,
      @JsonKey(name: 'main_category') required this.mainCategoryId});

  factory _$_CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDTOFromJson(json);

  @override
  final int id;
  @override
  final String category;
  @override
  @JsonKey(name: 'main_category')
  final int mainCategoryId;

  @override
  String toString() {
    return 'CategoryDTO(id: $id, category: $category, mainCategoryId: $mainCategoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.mainCategoryId, mainCategoryId) ||
                other.mainCategoryId == mainCategoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, category, mainCategoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryDTOCopyWith<_$_CategoryDTO> get copyWith =>
      __$$_CategoryDTOCopyWithImpl<_$_CategoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDTOToJson(
      this,
    );
  }
}

abstract class _CategoryDTO implements CategoryDTO {
  const factory _CategoryDTO(
          {required final int id,
          required final String category,
          @JsonKey(name: 'main_category') required final int mainCategoryId}) =
      _$_CategoryDTO;

  factory _CategoryDTO.fromJson(Map<String, dynamic> json) =
      _$_CategoryDTO.fromJson;

  @override
  int get id;
  @override
  String get category;
  @override
  @JsonKey(name: 'main_category')
  int get mainCategoryId;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDTOCopyWith<_$_CategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
