// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? msg) error,
    required TResult Function() awaiting,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? msg)? error,
    TResult? Function()? awaiting,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? msg)? error,
    TResult Function()? awaiting,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignInState value) $default, {
    required TResult Function(Error value) error,
    required TResult Function(Awaiting value) awaiting,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignInState value)? $default, {
    TResult? Function(Error value)? error,
    TResult? Function(Awaiting value)? awaiting,
    TResult? Function(Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignInState value)? $default, {
    TResult Function(Error value)? error,
    TResult Function(Awaiting value)? awaiting,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$Error(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'SignInState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? msg) error,
    required TResult Function() awaiting,
    required TResult Function() success,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? msg)? error,
    TResult? Function()? awaiting,
    TResult? Function()? success,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? msg)? error,
    TResult Function()? awaiting,
    TResult Function()? success,
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
    TResult Function(_SignInState value) $default, {
    required TResult Function(Error value) error,
    required TResult Function(Awaiting value) awaiting,
    required TResult Function(Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignInState value)? $default, {
    TResult? Function(Error value)? error,
    TResult? Function(Awaiting value)? awaiting,
    TResult? Function(Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignInState value)? $default, {
    TResult Function(Error value)? error,
    TResult Function(Awaiting value)? awaiting,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SignInState {
  const factory Error({final String? msg}) = _$Error;

  String? get msg;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AwaitingCopyWith<$Res> {
  factory _$$AwaitingCopyWith(
          _$Awaiting value, $Res Function(_$Awaiting) then) =
      __$$AwaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AwaitingCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$Awaiting>
    implements _$$AwaitingCopyWith<$Res> {
  __$$AwaitingCopyWithImpl(_$Awaiting _value, $Res Function(_$Awaiting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Awaiting implements Awaiting {
  const _$Awaiting();

  @override
  String toString() {
    return 'SignInState.awaiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Awaiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? msg) error,
    required TResult Function() awaiting,
    required TResult Function() success,
  }) {
    return awaiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? msg)? error,
    TResult? Function()? awaiting,
    TResult? Function()? success,
  }) {
    return awaiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? msg)? error,
    TResult Function()? awaiting,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (awaiting != null) {
      return awaiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignInState value) $default, {
    required TResult Function(Error value) error,
    required TResult Function(Awaiting value) awaiting,
    required TResult Function(Success value) success,
  }) {
    return awaiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignInState value)? $default, {
    TResult? Function(Error value)? error,
    TResult? Function(Awaiting value)? awaiting,
    TResult? Function(Success value)? success,
  }) {
    return awaiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignInState value)? $default, {
    TResult Function(Error value)? error,
    TResult Function(Awaiting value)? awaiting,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (awaiting != null) {
      return awaiting(this);
    }
    return orElse();
  }
}

abstract class Awaiting implements SignInState {
  const factory Awaiting() = _$Awaiting;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$Success>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Success implements Success {
  const _$Success();

  @override
  String toString() {
    return 'SignInState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? msg) error,
    required TResult Function() awaiting,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? msg)? error,
    TResult? Function()? awaiting,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? msg)? error,
    TResult Function()? awaiting,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignInState value) $default, {
    required TResult Function(Error value) error,
    required TResult Function(Awaiting value) awaiting,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignInState value)? $default, {
    TResult? Function(Error value)? error,
    TResult? Function(Awaiting value)? awaiting,
    TResult? Function(Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignInState value)? $default, {
    TResult Function(Error value)? error,
    TResult Function(Awaiting value)? awaiting,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements SignInState {
  const factory Success() = _$Success;
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInState>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState();

  @override
  String toString() {
    return 'SignInState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? msg) error,
    required TResult Function() awaiting,
    required TResult Function() success,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? msg)? error,
    TResult? Function()? awaiting,
    TResult? Function()? success,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? msg)? error,
    TResult Function()? awaiting,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignInState value) $default, {
    required TResult Function(Error value) error,
    required TResult Function(Awaiting value) awaiting,
    required TResult Function(Success value) success,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignInState value)? $default, {
    TResult? Function(Error value)? error,
    TResult? Function(Awaiting value)? awaiting,
    TResult? Function(Success value)? success,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignInState value)? $default, {
    TResult Function(Error value)? error,
    TResult Function(Awaiting value)? awaiting,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SignInState implements SignInState {
  const factory _SignInState() = _$_SignInState;
}
