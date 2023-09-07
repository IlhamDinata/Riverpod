import 'package:flutter/material.dart';
import 'package:helloworld/component/widget/responsive_layout.dart';
import 'package:helloworld/screen/login/widget/login.dart';
import 'package:helloworld/screen/login/widget/mobile_layout.dart';
import 'package:helloworld/screen/login/widget/tablet_layout.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileScaffold:
            LoginWidget(isMobile: true),
        tabletScaffold: LoginPageTablet(),
      ),
    );
  }
}
