// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainCategoryDTO _$MainCategoryDTOFromJson(Map<String, dynamic> json) {
  return _MainCategoryDTO.fromJson(json);
}

/// @nodoc
mixin _$MainCategoryDTO {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_category')
  String get name => throw _privateConstructorUsedError;
  List<CategoryDTO> get category => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCategoryDTOCopyWith<MainCategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCategoryDTOCopyWith<$Res> {
  factory $MainCategoryDTOCopyWith(
          MainCategoryDTO value, $Res Function(MainCategoryDTO) then) =
      _$MainCategoryDTOCopyWithImpl<$Res, MainCategoryDTO>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'main_category') String name,
      List<CategoryDTO> category,
      String image});
}

/// @nodoc
class _$MainCategoryDTOCopyWithImpl<$Res, $Val extends MainCategoryDTO>
    implements $MainCategoryDTOCopyWith<$Res> {
  _$MainCategoryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? image = null,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryDTO>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainCategoryDTOCopyWith<$Res>
    implements $MainCategoryDTOCopyWith<$Res> {
  factory _$$_MainCategoryDTOCopyWith(
          _$_MainCategoryDTO value, $Res Function(_$_MainCategoryDTO) then) =
      __$$_MainCategoryDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'main_category') String name,
      List<CategoryDTO> category,
      String image});
}

/// @nodoc
class __$$_MainCategoryDTOCopyWithImpl<$Res>
    extends _$MainCategoryDTOCopyWithImpl<$Res, _$_MainCategoryDTO>
    implements _$$_MainCategoryDTOCopyWith<$Res> {
  __$$_MainCategoryDTOCopyWithImpl(
      _$_MainCategoryDTO _value, $Res Function(_$_MainCategoryDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? image = null,
  }) {
    return _then(_$_MainCategoryDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryDTO>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainCategoryDTO implements _MainCategoryDTO {
  const _$_MainCategoryDTO(
      {required this.id,
      @JsonKey(name: 'main_category') required this.name,
      required final List<CategoryDTO> category,
      required this.image})
      : _category = category;

  factory _$_MainCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MainCategoryDTOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'main_category')
  final String name;
  final List<CategoryDTO> _category;
  @override
  List<CategoryDTO> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  final String image;

  @override
  String toString() {
    return 'MainCategoryDTO(id: $id, name: $name, category: $category, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainCategoryDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_category), image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainCategoryDTOCopyWith<_$_MainCategoryDTO> get copyWith =>
      __$$_MainCategoryDTOCopyWithImpl<_$_MainCategoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainCategoryDTOToJson(
      this,
    );
  }
}

abstract class _MainCategoryDTO implements MainCategoryDTO {
  const factory _MainCategoryDTO(
      {required final int id,
      @JsonKey(name: 'main_category') required final String name,
      required final List<CategoryDTO> category,
      required final String image}) = _$_MainCategoryDTO;

  factory _MainCategoryDTO.fromJson(Map<String, dynamic> json) =
      _$_MainCategoryDTO.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'main_category')
  String get name;
  @override
  List<CategoryDTO> get category;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_MainCategoryDTOCopyWith<_$_MainCategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
