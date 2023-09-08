import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:helloworld/component/style/mytext.dart';
import 'package:helloworld/screen/home/view/home_page.dart';
import 'package:helloworld/screen/login/view/login_page.dart';
import 'package:helloworld/screen/signup/view/signup_page.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

int selectedIndex = 0;

class _BottomNavBarState extends State<BottomNavBar> {
  static const List<Widget> widgetOptions = <Widget>[
    HomePage(),
    LoginPage(),
    SignUpPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.grey.shade200,
        child: GNav(
          haptic: true,
          tabBackgroundColor: Colors.grey.shade800,
          gap: 8,
          // padding: const EdgeInsets.all(16),
          tabs: [
            GButton(
                icon: PhosphorIcons.regular.house,
                text: "Home",
                textStyle: medium),
            GButton(
                icon: PhosphorIcons.regular.heart,
                text: "Wishlist",
                textStyle: medium),
            GButton(
                icon: PhosphorIcons.regular.gearSix,
                text: "Setting",
                textStyle: medium),
          ],
          selectedIndex: selectedIndex,
          onTabChange: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
