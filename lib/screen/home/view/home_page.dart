import 'package:flutter/material.dart';
import 'package:helloworld/component/widget/responsive_layout.dart';
import 'package:helloworld/screen/home/widget/mobile_layout.dart';
import 'package:helloworld/screen/home/widget/tablet_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileScaffold: HomePageMobile(),
        tabletScaffold: HomePageTablet(),
      ),
    );
  }
}
