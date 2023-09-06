import 'package:flutter/material.dart';
import 'package:helloworld/screen/login/widget/login.dart';

class LoginPageMobile extends StatelessWidget {
  const LoginPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginWidget(isMobile: true),
    );
  }
}