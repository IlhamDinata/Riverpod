import 'package:flutter/material.dart';
import 'package:helloworld/screen/signup/widget/register.dart';

class SignUpPageMobile extends StatelessWidget {
  const SignUpPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: RegisterWidget(isMobile: true),
    );
  }
}