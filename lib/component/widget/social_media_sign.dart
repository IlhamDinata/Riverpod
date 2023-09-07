import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

Widget thirdPartyLogin() {
  return Container(
    margin: const EdgeInsets.only(left: 80, right: 80, top: 40, bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        boxButton(onTap: () {}, imgPath: "assets/icons/google.png"),
        boxButton(onTap: () {}, imgPath: "assets/icons/apple.png"),
        boxButton(onTap: () {}, imgPath: "assets/icons/facebook.png"),
      ],
    ),
  );
}

Widget boxButton({required Function()? onTap, required String imgPath}) {
  return ZoomTapAnimation(
    onTap: onTap,
    child: SizedBox(
      width: 40,
      height: 40,
      child: Image.asset(imgPath),
    ),
  );
}
