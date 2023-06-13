import 'package:flutter/material.dart';

class SignUpControllers {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repPasswordController = TextEditingController();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();

  TextEditingController get loginController => _loginController;

  TextEditingController get passwordController => _passwordController;

  TextEditingController get repPasswordController => _repPasswordController;

  TextEditingController get firstnameController => _firstnameController;

  TextEditingController get lastnameController => _lastnameController;

  TextEditingController get emailController => _emailController;

  String get login => _loginController.value.text;

  String get password => _passwordController.value.text;

  String get repPassword => _repPasswordController.value.text;

  String get firstname => _firstnameController.value.text;

  String get lastname => _lastnameController.value.text;

  String get email => _emailController.value.text;

  void disposeAll() {
    _loginController.dispose();
    _passwordController.dispose();
    _repPasswordController.dispose();
    _firstnameController.dispose();
    _lastnameController.dispose();
    _emailController.dispose();
  }
}
