import 'dart:developer';

import 'package:helloworld/screen/signup/notifier/register_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterController {
  late WidgetRef ref;

  RegisterController({required this.ref});

  void handleSignUp() {
    var state = ref.read(registerNotifierProvider);

    String name = state.username;
    String email = state.email;

    String password = state.password;
    String rePassword = state.rePassword;

    log("Your name is $name");
    log("Your email is $email");
    log("Your password is $password");
    log("Your rePassword is $rePassword");

    if (state.password != state.rePassword) {
      log("Your password does not match");
    }
  }
}
