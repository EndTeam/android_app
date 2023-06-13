class Validators {
  static final _passRegexp =
      RegExp(r'^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\d)(?=.*[!#$%&?@./\\+\-="]).*$');
  static final _emailRegexp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  static String? loginValidator(String? value) {
    if (value == '') {
      return 'Обязательное поле';
    }
    return null;
  }

  static String? emailValidator(String? value) {
    if (value == '') {
      return 'Обязательное поле';
    }
    if (!_emailRegexp.hasMatch(value!)) {
      return 'Неправильная почта';
    }
    return null;
  }

  static String? passwordRegisterValidator(String? value) {
    if (value == '') {
      return 'Обязательное поле';
    }
    if (value!.length < 8) {
      return 'Пароль должен быть длинее 8 символов';
    }
    if (!_passRegexp.hasMatch(value)) {
      return 'Пароль должен содержать хотябы один символ и цифру';
    }
    return null;
  }

  static String? repeatPasswordRegisterValidator(
      String? value, String? originalPass) {
    if (value == '') {
      return 'Обязательное поле';
    }
    if (value != originalPass) {
      return 'Пароли не совпадают';
    }
    return null;
  }

  static String? firstnameValidator(String? value) {
    if (value == '') {
      return 'Обязательное поле';
    }
    return null;
  }

  static String? lastnameValidator(String? value) {
    if (value == '') {
      return 'Обязательное поле';
    }
    return null;
  }
}
