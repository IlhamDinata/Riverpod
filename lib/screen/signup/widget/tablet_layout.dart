import 'package:flutter/material.dart';
import 'package:helloworld/screen/signup/widget/register.dart';

class SignUpPageTablet extends StatelessWidget {
  const SignUpPageTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: RegisterWidget(),
    );
  }
}