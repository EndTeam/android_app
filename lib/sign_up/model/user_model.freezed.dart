// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _UserModel.fromJson(json);
    case 'error':
      return Error.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'username')
  Object? get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'password', defaultValue: '')
  Object? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'password2', defaultValue: null)
  Object? get repPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name', defaultValue: null)
  Object? get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name', defaultValue: null)
  Object? get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: 'email', defaultValue: null)
  Object? get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'username') String login,
            @JsonKey(name: 'password', defaultValue: '') String password,
            @JsonKey(name: 'password2', defaultValue: null) String? repPassword,
            @JsonKey(name: 'first_name', defaultValue: null) String? firstname,
            @JsonKey(name: 'last_name', defaultValue: null) String? lastname,
            @JsonKey(name: 'email', defaultValue: null) String? email)
        $default, {
    required TResult Function(
            List<String>? login,
            List<String>? password,
            List<String>? repPassword,
            List<String>? firstname,
            List<String>? lastname,
            List<String>? email)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'username') String login,
            @JsonKey(name: 'password', defaultValue: '') String password,
            @JsonKey(name: 'password2', defaultValue: null) String? repPassword,
            @JsonKey(name: 'first_name', defaultValue: null) String? firstname,
            @JsonKey(name: 'last_name', defaultValue: null) String? lastname,
            @JsonKey(name: 'email', defaultValue: null) String? email)?
        $default, {
    TResult? Function(
            List<String>? login,
            List<String>? password,
            List<String>? repPassword,
            List<String>? firstname,
            List<String>? lastname,
            List<String>? email)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'username') String login,
            @JsonKey(name: 'password', defaultValue: '') String password,
            @JsonKey(name: 'password2', defaultValue: null) String? repPassword,
            @JsonKey(name: 'first_name', defaultValue: null) String? firstname,
            @JsonKey(name: 'last_name', defaultValue: null) String? lastname,
            @JsonKey(name: 'email', defaultValue: null) String? email)?
        $default, {
    TResult Function(
            List<String>? login,
            List<String>? password,
            List<String>? repPassword,
            List<String>? firstname,
            List<String>? lastname,
            List<String>? email)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserModel value) $default, {
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserModel value)? $default, {
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserModel value)? $default, {
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String login,
      @JsonKey(name: 'password', defaultValue: '') String password,
      @JsonKey(name: 'password2', defaultValue: null) String? repPassword,
      @JsonKey(name: 'first_name', defaultValue: null) String? firstname,
      @JsonKey(name: 'last_name', defaultValue: null) String? lastname,
      @JsonKey(name: 'email', defaultValue: null) String? email});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? repPassword = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_UserModel(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repPassword: freezed == repPassword
          ? _value.repPassword
          : repPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@JsonKey(name: 'username') required this.login,
      @JsonKey(name: 'password', defaultValue: '') required this.password,
      @JsonKey(name: 'password2', defaultValue: null) this.repPassword,
      @JsonKey(name: 'first_name', defaultValue: null) this.firstname,
      @JsonKey(name: 'last_name', defaultValue: null) this.lastname,
      @JsonKey(name: 'email', defaultValue: null) this.email,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String login;
  @override
  @JsonKey(name: 'password', defaultValue: '')
  final String password;
  @override
  @JsonKey(name: 'password2', defaultValue: null)
  final String? repPassword;
  @override
  @JsonKey(name: 'first_name', defaultValue: null)
  final String? firstname;
  @override
  @JsonKey(name: 'last_name', defaultValue: null)
  final String? lastname;
  @override
  @JsonKey(name: 'email', defaultValue: null)
  final String? email;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserModel(login: $login, password: $password, repPassword: $repPassword, firstname: $firstname, lastname: $lastname, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repPassword, repPassword) ||
                other.repPassword == repPassword) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, login, password, repPassword, firstname, lastname, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'username') String login,
            @JsonKey(name: 'password', defaultValue: '') String password,
            @JsonKey(name: 'password2', defaultValue: null) String? repPassword,
            @JsonKey(name: 'first_name', defaultValue: null) String? firstname,
            @JsonKey(name: 'last_name', defaultValue: null) String? lastname,
            @JsonKey(name: 'email', defaultValue: null) String? email)
        $default, {
    required TResult Function(
            List<String>? login,
            List<String>? password,
            List<String>? repPassword,
            List<String>? firstname,
            List<String>? lastname,
            List<String>? email)
        error,
  }) {
    return $default(login, password, repPassword, firstname, lastname, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'username') String login,
            @JsonKey(name: 'password', defaultValue: '') String password,
            @JsonKey(name: 'password2', defaultValue: null) String? repPassword,
            @JsonKey(name: 'first_name', defaultValue: null) String? firstname,
            @JsonKey(name: 'last_name', defaultValue: null) String? lastname,
            @JsonKey(name: 'email', defaultValue: null) String? email)?
        $default, {
    TResult? Function(
            List<String>? login,
            List<String>? password,
            List<String>? repPassword,
            List<String>? firstname,
            List<String>? lastname,
            List<String>? email)?
        error,
  }) {
    return $default?.call(
        login, password, repPassword, firstname, lastname, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'username') String login,
            @JsonKey(name: 'password', defaultValue: '') String password,
            @JsonKey(name: 'password2', defaultValue: null) String? repPassword,
            @JsonKey(name: 'first_name', defaultValue: null) String? firstname,
            @JsonKey(name: 'last_name', defaultValue: null) String? lastname,
            @JsonKey(name: 'email', defaultValue: null) String? email)?
        $default, {
    TResult Function(
            List<String>? login,
            List<String>? password,
            List<String>? repPassword,
            List<String>? firstname,
            List<String>? lastname,
            List<String>? email)?
        error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(login, password, repPassword, firstname, lastname, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserModel value) $default, {
    required TResult Function(Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserModel value)? $default, {
    TResult? Function(Error value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserModel value)? $default, {
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: 'username') required final String login,
      @JsonKey(name: 'password', defaultValue: '')
      required final String password,
      @JsonKey(name: 'password2', defaultValue: null) final String? repPassword,
      @JsonKey(name: 'first_name', defaultValue: null) final String? firstname,
      @JsonKey(name: 'last_name', defaultValue: null) final String? lastname,
      @JsonKey(name: 'email', defaultValue: null)
      final String? email}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: 'username')
  String get login;
  @override
  @JsonKey(name: 'password', defaultValue: '')
  String get password;
  @override
  @JsonKey(name: 'password2', defaultValue: null)
  String? get repPassword;
  @override
  @JsonKey(name: 'first_name', defaultValue: null)
  String? get firstname;
  @override
  @JsonKey(name: 'last_name', defaultValue: null)
  String? get lastname;
  @override
  @JsonKey(name: 'email', defaultValue: null)
  String? get email;
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<String>? login,
      List<String>? password,
      List<String>? repPassword,
      List<String>? firstname,
      List<String>? lastname,
      List<String>? email});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? password = freezed,
    Object? repPassword = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
  }) {
    return _then(_$Error(
      login: freezed == login
          ? _value._login
          : login // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      password: freezed == password
          ? _value._password
          : password // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      repPassword: freezed == repPassword
          ? _value._repPassword
          : repPassword // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      firstname: freezed == firstname
          ? _value._firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastname: freezed == lastname
          ? _value._lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      email: freezed == email
          ? _value._email
          : email // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Error implements Error {
  const _$Error(
      {final List<String>? login,
      final List<String>? password,
      final List<String>? repPassword,
      final List<String>? firstname,
      final List<String>? lastname,
      final List<String>? email,
      final String? $type})
      : _login = login,
        _password = password,
        _repPassword = repPassword,
        _firstname = firstname,
        _lastname = lastname,
        _email = email,
        $type = $type ?? 'error';

  factory _$Error.fromJson(Map<String, dynamic> json) => _$$ErrorFromJson(json);

  final List<String>? _login;
  @override
  List<String>? get login {
    final value = _login;
    if (value == null) return null;
    if (_login is EqualUnmodifiableListView) return _login;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _password;
  @override
  List<String>? get password {
    final value = _password;
    if (value == null) return null;
    if (_password is EqualUnmodifiableListView) return _password;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _repPassword;
  @override
  List<String>? get repPassword {
    final value = _repPassword;
    if (value == null) return null;
    if (_repPassword is EqualUnmodifiableListView) return _repPassword;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _firstname;
  @override
  List<String>? get firstname {
    final value = _firstname;
    if (value == null) return null;
    if (_firstname is EqualUnmodifiableListView) return _firstname;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _lastname;
  @override
  List<String>? get lastname {
    final value = _lastname;
    if (value == null) return null;
    if (_lastname is EqualUnmodifiableListView) return _lastname;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _email;
  @override
  List<String>? get email {
    final value = _email;
    if (value == null) return null;
    if (_email is EqualUnmodifiableListView) return _email;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserModel.error(login: $login, password: $password, repPassword: $repPassword, firstname: $firstname, lastname: $lastname, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality().equals(other._login, _login) &&
            const DeepCollectionEquality().equals(other._password, _password) &&
            const DeepCollectionEquality()
                .equals(other._repPassword, _repPassword) &&
            const DeepCollectionEquality()
                .equals(other._firstname, _firstname) &&
            const DeepCollectionEquality().equals(other._lastname, _lastname) &&
            const DeepCollectionEquality().equals(other._email, _email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_login),
      const DeepCollectionEquality().hash(_password),
      const DeepCollectionEquality().hash(_repPassword),
      const DeepCollectionEquality().hash(_firstname),
      const DeepCollectionEquality().hash(_lastname),
      const DeepCollectionEquality().hash(_email));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'username') String login,
            @JsonKey(name: 'password', defaultValue: '') String password,
            @JsonKey(name: 'password2', defaultValue: null) String? repPassword,
            @JsonKey(name: 'first_name', defaultValue: null) String? firstname,
            @JsonKey(name: 'last_name', defaultValue: null) String? lastname,
            @JsonKey(name: 'email', defaultValue: null) String? email)
        $default, {
    required TResult Function(
            List<String>? login,
            List<String>? password,
            List<String>? repPassword,
            List<String>? firstname,
            List<String>? lastname,
            List<String>? email)
        error,
  }) {
    return error(login, password, repPassword, firstname, lastname, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'username') String login,
            @JsonKey(name: 'password', defaultValue: '') String password,
            @JsonKey(name: 'password2', defaultValue: null) String? repPassword,
            @JsonKey(name: 'first_name', defaultValue: null) String? firstname,
            @JsonKey(name: 'last_name', defaultValue: null) String? lastname,
            @JsonKey(name: 'email', defaultValue: null) String? email)?
        $default, {
    TResult? Function(
            List<String>? login,
            List<String>? password,
            List<String>? repPassword,
            List<String>? firstname,
            List<String>? lastname,
            List<String>? email)?
        error,
  }) {
    return error?.call(
        login, password, repPassword, firstname, lastname, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'username') String login,
            @JsonKey(name: 'password', defaultValue: '') String password,
            @JsonKey(name: 'password2', defaultValue: null) String? repPassword,
            @JsonKey(name: 'first_name', defaultValue: null) String? firstname,
            @JsonKey(name: 'last_name', defaultValue: null) String? lastname,
            @JsonKey(name: 'email', defaultValue: null) String? email)?
        $default, {
    TResult Function(
            List<String>? login,
            List<String>? password,
            List<String>? repPassword,
            List<String>? firstname,
            List<String>? lastname,
            List<String>? email)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(login, password, repPassword, firstname, lastname, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserModel value) $default, {
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserModel value)? $default, {
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserModel value)? $default, {
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorToJson(
      this,
    );
  }
}

abstract class Error implements UserModel {
  const factory Error(
      {final List<String>? login,
      final List<String>? password,
      final List<String>? repPassword,
      final List<String>? firstname,
      final List<String>? lastname,
      final List<String>? email}) = _$Error;

  factory Error.fromJson(Map<String, dynamic> json) = _$Error.fromJson;

  @override
  List<String>? get login;
  @override
  List<String>? get password;
  @override
  List<String>? get repPassword;
  @override
  List<String>? get firstname;
  @override
  List<String>? get lastname;
  @override
  List<String>? get email;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
