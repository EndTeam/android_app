// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'username') required final String login,
    @JsonKey(name: 'password', defaultValue: '') required final String password,
    @JsonKey(name: 'password2', defaultValue: null) final String? repPassword,
    @JsonKey(name: 'first_name', defaultValue: null) final String? firstname,
    @JsonKey(name: 'last_name', defaultValue: null) final String? lastname,
    @JsonKey(name: 'email', defaultValue: null) final String? email,
  }) = _UserModel;

  const factory UserModel.error({
    List<String>? login,
    List<String>? password,
    List<String>? repPassword,
    List<String>? firstname,
    List<String>? lastname,
    List<String>? email,
  }) = Error;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$_UserModel.fromJson(json);
}
