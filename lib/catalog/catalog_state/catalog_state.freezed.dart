// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(IMap<MainCategory, List<ProductModel>> products)
        $default, {
    required TResult Function(String? msg) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(IMap<MainCategory, List<ProductModel>> products)?
        $default, {
    TResult? Function(String? msg)? error,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(IMap<MainCategory, List<ProductModel>> products)?
        $default, {
    TResult Function(String? msg)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CatalogState value) $default, {
    required TResult Function(CatalogError value) error,
    required TResult Function(CatalogLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CatalogState value)? $default, {
    TResult? Function(CatalogError value)? error,
    TResult? Function(CatalogLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CatalogState value)? $default, {
    TResult Function(CatalogError value)? error,
    TResult Function(CatalogLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogStateCopyWith<$Res> {
  factory $CatalogStateCopyWith(
          CatalogState value, $Res Function(CatalogState) then) =
      _$CatalogStateCopyWithImpl<$Res, CatalogState>;
}

/// @nodoc
class _$CatalogStateCopyWithImpl<$Res, $Val extends CatalogState>
    implements $CatalogStateCopyWith<$Res> {
  _$CatalogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CatalogErrorCopyWith<$Res> {
  factory _$$CatalogErrorCopyWith(
          _$CatalogError value, $Res Function(_$CatalogError) then) =
      __$$CatalogErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$CatalogErrorCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$CatalogError>
    implements _$$CatalogErrorCopyWith<$Res> {
  __$$CatalogErrorCopyWithImpl(
      _$CatalogError _value, $Res Function(_$CatalogError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$CatalogError(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CatalogError implements CatalogError {
  const _$CatalogError({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'CatalogState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogErrorCopyWith<_$CatalogError> get copyWith =>
      __$$CatalogErrorCopyWithImpl<_$CatalogError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(IMap<MainCategory, List<ProductModel>> products)
        $default, {
    required TResult Function(String? msg) error,
    required TResult Function() loading,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(IMap<MainCategory, List<ProductModel>> products)?
        $default, {
    TResult? Function(String? msg)? error,
    TResult? Function()? loading,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(IMap<MainCategory, List<ProductModel>> products)?
        $default, {
    TResult Function(String? msg)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CatalogState value) $default, {
    required TResult Function(CatalogError value) error,
    required TResult Function(CatalogLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CatalogState value)? $default, {
    TResult? Function(CatalogError value)? error,
    TResult? Function(CatalogLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CatalogState value)? $default, {
    TResult Function(CatalogError value)? error,
    TResult Function(CatalogLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CatalogError implements CatalogState {
  const factory CatalogError({final String? msg}) = _$CatalogError;

  String? get msg;
  @JsonKey(ignore: true)
  _$$CatalogErrorCopyWith<_$CatalogError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CatalogLoadingCopyWith<$Res> {
  factory _$$CatalogLoadingCopyWith(
          _$CatalogLoading value, $Res Function(_$CatalogLoading) then) =
      __$$CatalogLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CatalogLoadingCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$CatalogLoading>
    implements _$$CatalogLoadingCopyWith<$Res> {
  __$$CatalogLoadingCopyWithImpl(
      _$CatalogLoading _value, $Res Function(_$CatalogLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CatalogLoading implements CatalogLoading {
  const _$CatalogLoading();

  @override
  String toString() {
    return 'CatalogState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CatalogLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(IMap<MainCategory, List<ProductModel>> products)
        $default, {
    required TResult Function(String? msg) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(IMap<MainCategory, List<ProductModel>> products)?
        $default, {
    TResult? Function(String? msg)? error,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(IMap<MainCategory, List<ProductModel>> products)?
        $default, {
    TResult Function(String? msg)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CatalogState value) $default, {
    required TResult Function(CatalogError value) error,
    required TResult Function(CatalogLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CatalogState value)? $default, {
    TResult? Function(CatalogError value)? error,
    TResult? Function(CatalogLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CatalogState value)? $default, {
    TResult Function(CatalogError value)? error,
    TResult Function(CatalogLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CatalogLoading implements CatalogState {
  const factory CatalogLoading() = _$CatalogLoading;
}

/// @nodoc
abstract class _$$_CatalogStateCopyWith<$Res> {
  factory _$$_CatalogStateCopyWith(
          _$_CatalogState value, $Res Function(_$_CatalogState) then) =
      __$$_CatalogStateCopyWithImpl<$Res>;
  @useResult
  $Res call({IMap<MainCategory, List<ProductModel>> products});
}

/// @nodoc
class __$$_CatalogStateCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$_CatalogState>
    implements _$$_CatalogStateCopyWith<$Res> {
  __$$_CatalogStateCopyWithImpl(
      _$_CatalogState _value, $Res Function(_$_CatalogState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$_CatalogState(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as IMap<MainCategory, List<ProductModel>>,
    ));
  }
}

/// @nodoc

class _$_CatalogState implements _CatalogState {
  const _$_CatalogState({required this.products});

  @override
  final IMap<MainCategory, List<ProductModel>> products;

  @override
  String toString() {
    return 'CatalogState(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogState &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, products);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogStateCopyWith<_$_CatalogState> get copyWith =>
      __$$_CatalogStateCopyWithImpl<_$_CatalogState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(IMap<MainCategory, List<ProductModel>> products)
        $default, {
    required TResult Function(String? msg) error,
    required TResult Function() loading,
  }) {
    return $default(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(IMap<MainCategory, List<ProductModel>> products)?
        $default, {
    TResult? Function(String? msg)? error,
    TResult? Function()? loading,
  }) {
    return $default?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(IMap<MainCategory, List<ProductModel>> products)?
        $default, {
    TResult Function(String? msg)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CatalogState value) $default, {
    required TResult Function(CatalogError value) error,
    required TResult Function(CatalogLoading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CatalogState value)? $default, {
    TResult? Function(CatalogError value)? error,
    TResult? Function(CatalogLoading value)? loading,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CatalogState value)? $default, {
    TResult Function(CatalogError value)? error,
    TResult Function(CatalogLoading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _CatalogState implements CatalogState {
  const factory _CatalogState(
          {required final IMap<MainCategory, List<ProductModel>> products}) =
      _$_CatalogState;

  IMap<MainCategory, List<ProductModel>> get products;
  @JsonKey(ignore: true)
  _$$_CatalogStateCopyWith<_$_CatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}
