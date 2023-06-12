// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(IList<ProductModel> products) success,
    required TResult Function(String? msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(IList<ProductModel> products)? success,
    TResult? Function(String? msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(IList<ProductModel> products)? success,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteLoading value) loading,
    required TResult Function(FavoriteSuccess value) success,
    required TResult Function(FavoriteError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteLoading value)? loading,
    TResult? Function(FavoriteSuccess value)? success,
    TResult? Function(FavoriteError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteLoading value)? loading,
    TResult Function(FavoriteSuccess value)? success,
    TResult Function(FavoriteError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoriteLoadingCopyWith<$Res> {
  factory _$$FavoriteLoadingCopyWith(
          _$FavoriteLoading value, $Res Function(_$FavoriteLoading) then) =
      __$$FavoriteLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteLoadingCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteLoading>
    implements _$$FavoriteLoadingCopyWith<$Res> {
  __$$FavoriteLoadingCopyWithImpl(
      _$FavoriteLoading _value, $Res Function(_$FavoriteLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteLoading implements FavoriteLoading {
  const _$FavoriteLoading();

  @override
  String toString() {
    return 'FavoriteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoriteLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(IList<ProductModel> products) success,
    required TResult Function(String? msg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(IList<ProductModel> products)? success,
    TResult? Function(String? msg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(IList<ProductModel> products)? success,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteLoading value) loading,
    required TResult Function(FavoriteSuccess value) success,
    required TResult Function(FavoriteError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteLoading value)? loading,
    TResult? Function(FavoriteSuccess value)? success,
    TResult? Function(FavoriteError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteLoading value)? loading,
    TResult Function(FavoriteSuccess value)? success,
    TResult Function(FavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavoriteLoading implements FavoriteState {
  const factory FavoriteLoading() = _$FavoriteLoading;
}

/// @nodoc
abstract class _$$FavoriteSuccessCopyWith<$Res> {
  factory _$$FavoriteSuccessCopyWith(
          _$FavoriteSuccess value, $Res Function(_$FavoriteSuccess) then) =
      __$$FavoriteSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({IList<ProductModel> products});
}

/// @nodoc
class __$$FavoriteSuccessCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteSuccess>
    implements _$$FavoriteSuccessCopyWith<$Res> {
  __$$FavoriteSuccessCopyWithImpl(
      _$FavoriteSuccess _value, $Res Function(_$FavoriteSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$FavoriteSuccess(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as IList<ProductModel>,
    ));
  }
}

/// @nodoc

class _$FavoriteSuccess implements FavoriteSuccess {
  const _$FavoriteSuccess({required this.products});

  @override
  final IList<ProductModel> products;

  @override
  String toString() {
    return 'FavoriteState.success(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteSuccess &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteSuccessCopyWith<_$FavoriteSuccess> get copyWith =>
      __$$FavoriteSuccessCopyWithImpl<_$FavoriteSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(IList<ProductModel> products) success,
    required TResult Function(String? msg) error,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(IList<ProductModel> products)? success,
    TResult? Function(String? msg)? error,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(IList<ProductModel> products)? success,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteLoading value) loading,
    required TResult Function(FavoriteSuccess value) success,
    required TResult Function(FavoriteError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteLoading value)? loading,
    TResult? Function(FavoriteSuccess value)? success,
    TResult? Function(FavoriteError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteLoading value)? loading,
    TResult Function(FavoriteSuccess value)? success,
    TResult Function(FavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FavoriteSuccess implements FavoriteState {
  const factory FavoriteSuccess({required final IList<ProductModel> products}) =
      _$FavoriteSuccess;

  IList<ProductModel> get products;
  @JsonKey(ignore: true)
  _$$FavoriteSuccessCopyWith<_$FavoriteSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteErrorCopyWith<$Res> {
  factory _$$FavoriteErrorCopyWith(
          _$FavoriteError value, $Res Function(_$FavoriteError) then) =
      __$$FavoriteErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$FavoriteErrorCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteError>
    implements _$$FavoriteErrorCopyWith<$Res> {
  __$$FavoriteErrorCopyWithImpl(
      _$FavoriteError _value, $Res Function(_$FavoriteError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$FavoriteError(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FavoriteError implements FavoriteError {
  const _$FavoriteError({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'FavoriteState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteErrorCopyWith<_$FavoriteError> get copyWith =>
      __$$FavoriteErrorCopyWithImpl<_$FavoriteError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(IList<ProductModel> products) success,
    required TResult Function(String? msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(IList<ProductModel> products)? success,
    TResult? Function(String? msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(IList<ProductModel> products)? success,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteLoading value) loading,
    required TResult Function(FavoriteSuccess value) success,
    required TResult Function(FavoriteError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteLoading value)? loading,
    TResult? Function(FavoriteSuccess value)? success,
    TResult? Function(FavoriteError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteLoading value)? loading,
    TResult Function(FavoriteSuccess value)? success,
    TResult Function(FavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavoriteError implements FavoriteState {
  const factory FavoriteError({final String? msg}) = _$FavoriteError;

  String? get msg;
  @JsonKey(ignore: true)
  _$$FavoriteErrorCopyWith<_$FavoriteError> get copyWith =>
      throw _privateConstructorUsedError;
}
