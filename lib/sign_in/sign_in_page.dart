import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ma_for_feip/service_locator/app_locator.dart';
import 'package:ma_for_feip/sign_in/controllers.dart';
import 'package:ma_for_feip/sign_up/model/user_model.dart';
import 'package:ma_for_feip/sign_up/validator.dart';
import 'package:ma_for_feip/theme_info.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final _controllers = SignInControllers();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controllers.disposeAll();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(AppLocator.instance.signInProvider, (previous, next) {
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
            horizontal: ThemeInfo.horizontalPadding,
          ),
          children: [
            SizedBox(
              height: MediaQuery.of(context).viewPadding.top,
            ),
            const Center(
              child: Text(
                'Вход',
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
            const SizedBox(height: ThemeInfo.elementsGap),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  ref.read(AppLocator.instance.signInProvider.notifier).signIn(
                        UserModel(
                          login: _controllers.login,
                          password: _controllers.password,
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
