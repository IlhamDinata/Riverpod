import 'package:flutter/material.dart';
import 'package:helloworld/screen/signup/widget/signup.dart';

class SignUpPageMobile extends StatelessWidget {
  const SignUpPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SignUpWidget(isMobile: true),
    );
  }
}