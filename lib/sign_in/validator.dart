class Validators {
  static String? loginValidator(String? value) {
    if (value == '') {
      return 'Обязательное поле';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == '') {
      return 'Обязательное поле';
    }
    return null;
  }
}
