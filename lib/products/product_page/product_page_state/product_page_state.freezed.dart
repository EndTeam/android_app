// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductPageState {
  ProductModel get product => throw _privateConstructorUsedError;
  NamedColor get color => throw _privateConstructorUsedError;
  NamedSize get size => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductPageStateCopyWith<ProductPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPageStateCopyWith<$Res> {
  factory $ProductPageStateCopyWith(
          ProductPageState value, $Res Function(ProductPageState) then) =
      _$ProductPageStateCopyWithImpl<$Res, ProductPageState>;
  @useResult
  $Res call({ProductModel product, NamedColor color, NamedSize size});
}

/// @nodoc
class _$ProductPageStateCopyWithImpl<$Res, $Val extends ProductPageState>
    implements $ProductPageStateCopyWith<$Res> {
  _$ProductPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? color = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as NamedColor,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as NamedSize,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductPageStateCopyWith<$Res>
    implements $ProductPageStateCopyWith<$Res> {
  factory _$$_ProductPageStateCopyWith(
          _$_ProductPageState value, $Res Function(_$_ProductPageState) then) =
      __$$_ProductPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel product, NamedColor color, NamedSize size});
}

/// @nodoc
class __$$_ProductPageStateCopyWithImpl<$Res>
    extends _$ProductPageStateCopyWithImpl<$Res, _$_ProductPageState>
    implements _$$_ProductPageStateCopyWith<$Res> {
  __$$_ProductPageStateCopyWithImpl(
      _$_ProductPageState _value, $Res Function(_$_ProductPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? color = null,
    Object? size = null,
  }) {
    return _then(_$_ProductPageState(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as NamedColor,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as NamedSize,
    ));
  }
}

/// @nodoc

class _$_ProductPageState implements _ProductPageState {
  const _$_ProductPageState(
      {required this.product, required this.color, required this.size});

  @override
  final ProductModel product;
  @override
  final NamedColor color;
  @override
  final NamedSize size;

  @override
  String toString() {
    return 'ProductPageState(product: $product, color: $color, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductPageState &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, color, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductPageStateCopyWith<_$_ProductPageState> get copyWith =>
      __$$_ProductPageStateCopyWithImpl<_$_ProductPageState>(this, _$identity);
}

abstract class _ProductPageState implements ProductPageState {
  const factory _ProductPageState(
      {required final ProductModel product,
      required final NamedColor color,
      required final NamedSize size}) = _$_ProductPageState;

  @override
  ProductModel get product;
  @override
  NamedColor get color;
  @override
  NamedSize get size;
  @override
  @JsonKey(ignore: true)
  _$$_ProductPageStateCopyWith<_$_ProductPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
