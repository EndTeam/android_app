import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ma_for_feip/service_locator/app_locator.dart';
import 'package:ma_for_feip/sign_up/controllers.dart';
import 'package:ma_for_feip/sign_up/model/user_model.dart';
import 'package:ma_for_feip/sign_up/validator.dart';
import 'package:ma_for_feip/theme_info.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final _controllers = SignUpControllers();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controllers.disposeAll();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(AppLocator.instance.signUpProvider, (previous, next) {
      next.whenOrNull(
        null,
        success: () async {
          Future.delayed(Duration.zero, context.pop);
        },
      );
    });
    return Scaffold(
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.symmetric(
              horizontal: ThemeInfo.horizontalPadding),
          children: [
            SizedBox(
              height: MediaQuery.of(context).viewPadding.top,
            ),
            const Center(
              child: Text(
                'Регистрация',
                style: ThemeInfo.labelLarge,
              ),
            ),
            TextFormField(
              controller: _controllers.loginController,
              validator: Validators.loginValidator,
              decoration: const InputDecoration(
                labelText: 'Логин',
                floatingLabelStyle:
                    TextStyle(color: ThemeInfo.primaryTextColor),
                focusedBorder: UnderlineInputBorder(),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: ThemeInfo.tertiaryTextColor),
                ),
              ),
            ),
            TextFormField(
              controller: _controllers.passwordController,
              validator: Validators.passwordRegisterValidator,
              decoration: const InputDecoration(
                labelText: 'Пароль',
                floatingLabelStyle:
                    TextStyle(color: ThemeInfo.primaryTextColor),
                focusedBorder: UnderlineInputBorder(),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: ThemeInfo.tertiaryTextColor),
                ),
              ),
            ),
            TextFormField(
              controller: _controllers.repPasswordController,
              validator: (val) => Validators.repeatPasswordRegisterValidator(
                val,
                _controllers.password,
              ),
              decoration: const InputDecoration(
                labelText: 'Повторите пароль',
                floatingLabelStyle:
                    TextStyle(color: ThemeInfo.primaryTextColor),
                focusedBorder: UnderlineInputBorder(),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: ThemeInfo.tertiaryTextColor),
                ),
              ),
            ),
            TextFormField(
              controller: _controllers.emailController,
              validator: Validators.emailValidator,
              decoration: const InputDecoration(
                labelText: 'Почта',
                floatingLabelStyle:
                    TextStyle(color: ThemeInfo.primaryTextColor),
                focusedBorder: UnderlineInputBorder(),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: ThemeInfo.tertiaryTextColor),
                ),
              ),
            ),
            TextFormField(
              controller: _controllers.firstnameController,
              validator: Validators.firstnameValidator,
              decoration: const InputDecoration(
                labelText: 'Имя',
                floatingLabelStyle:
                    TextStyle(color: ThemeInfo.primaryTextColor),
                focusedBorder: UnderlineInputBorder(),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: ThemeInfo.tertiaryTextColor),
                ),
              ),
            ),
            TextFormField(
              controller: _controllers.lastnameController,
              validator: Validators.lastnameValidator,
              decoration: const InputDecoration(
                labelText: 'Фамилия',
                floatingLabelStyle:
                    TextStyle(color: ThemeInfo.primaryTextColor),
                focusedBorder: UnderlineInputBorder(),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: ThemeInfo.tertiaryTextColor),
                ),
              ),
            ),
            const SizedBox(height: ThemeInfo.elementsGap),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  ref.read(AppLocator.instance.signUpProvider.notifier).signUp(
                        UserModel(
                          login: _controllers.login,
                          password: _controllers.password,
                          repPassword: _controllers.repPassword,
                          firstname: _controllers.firstname,
                          lastname: _controllers.lastname,
                          email: _controllers.email,
                        ),
                      );
                } else {
                  // TODO error;
                }
              }, // TODO add send
              child: const Text('Отправить'),
            )
          ],
        ),
      ),
    );
  }
}
