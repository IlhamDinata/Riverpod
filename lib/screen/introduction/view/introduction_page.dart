import 'package:flutter/material.dart';
import 'package:helloworld/component/widget/responsive_layout.dart';
import 'package:helloworld/screen/introduction/widget/mobile_layout.dart';
import 'package:helloworld/screen/introduction/widget/tablet_layout.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
   
      body: ResponsiveLayout(mobileScaffold: IntroductionPageMobile(), tabletScaffold: IntroductionPageTablet()),
    );
  }
}