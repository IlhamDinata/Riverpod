import 'package:flutter/material.dart';
import 'package:helloworld/screen/introduction/widget/introduction.dart';

class IntroductionPageMobile extends StatelessWidget {
  const IntroductionPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IntroductionWidget(isMobile: true,),
    );
  }
}