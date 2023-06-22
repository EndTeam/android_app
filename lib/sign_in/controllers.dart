import 'package:flutter/material.dart';

class SignInControllers {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  TextEditingController get loginController => _loginController;

  TextEditingController get passwordController => _passwordController;

  String get login => _loginController.value.text;

  String get password => _passwordController.value.text;

  void disposeAll() {
    _loginController.dispose();
    _passwordController.dispose();
  }
}
