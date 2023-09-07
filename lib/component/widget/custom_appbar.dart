import 'package:flutter/material.dart';
import 'package:helloworld/component/style/mycolors.dart';
import 'package:helloworld/component/style/mytext.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

AppBar customAppBar(
    {required String title,
    bool? centerTitle = false,
    bool leading = true,
    required Widget child,
    Function()? iconTap}) {
  return AppBar(
    automaticallyImplyLeading: leading,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.red,
        height: 1,
      ),
    ),
    title: Text(
      title,
      style: large,
    ),
    centerTitle: centerTitle,
    actions: [
      ZoomTapAnimation(
        onTap: iconTap,
        child: child,
      ),
    ],
  );
}
