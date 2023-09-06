import 'package:flutter/material.dart';
import 'package:helloworld/screen/introduction/widget/introduction.dart';

class IntroductionPageTablet extends StatelessWidget {
  const IntroductionPageTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IntroductionWidget(),
    );
  }
}