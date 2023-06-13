// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      login: json['username'] as String,
      password: json['password'] as String? ?? '',
      repPassword: json['password2'] as String?,
      firstname: json['first_name'] as String?,
      lastname: json['last_name'] as String?,
      email: json['email'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'username': instance.login,
      'password': instance.password,
      'password2': instance.repPassword,
      'first_name': instance.firstname,
      'last_name': instance.lastname,
      'email': instance.email,
      'runtimeType': instance.$type,
    };

_$Error _$$ErrorFromJson(Map<String, dynamic> json) => _$Error(
      login:
          (json['login'] as List<dynamic>?)?.map((e) => e as String).toList(),
      password: (json['password'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      repPassword: (json['repPassword'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      firstname: (json['firstname'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lastname: (json['lastname'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorToJson(_$Error instance) => <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
      'repPassword': instance.repPassword,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'runtimeType': instance.$type,
    };
