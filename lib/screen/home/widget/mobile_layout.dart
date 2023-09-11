import 'package:flutter/material.dart';
import 'package:helloworld/screen/home/widget/home_widget.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  HomeWidget(isMobile: true);
  }
}