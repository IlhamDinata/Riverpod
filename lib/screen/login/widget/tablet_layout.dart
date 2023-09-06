import 'package:flutter/material.dart';
import 'package:helloworld/screen/login/widget/login.dart';

class LoginPageTablet extends StatelessWidget {
  const LoginPageTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginWidget(),
    );
  }
}