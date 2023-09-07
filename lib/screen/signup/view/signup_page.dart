import 'package:flutter/material.dart';
import 'package:helloworld/component/widget/responsive_layout.dart';
import 'package:helloworld/screen/signup/widget/mobile_layout.dart';
import 'package:helloworld/screen/signup/widget/tablet_layout.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileScaffold: SignUpPageMobile(),
        tabletScaffold: SignUpPageTablet(),
      ),
    );
  }
}
