import 'package:flutter/material.dart';
import 'package:helloworld/component/style/mytext.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

AppBar customAppBar(
    {required String title,
    bool? centerTitle = false,
    bool leading = true,
    Widget? iconLeading,
    List<Widget>? child,
    Function()? iconTap}) {
  return AppBar(
    automaticallyImplyLeading: leading,
    leading: iconLeading,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.grey.withOpacity(0.1),
        height: 1,
      ),
    ),
    title: Text(
      title,
      style: large,
    ),
    centerTitle: centerTitle,
    actions: child,
      // ZoomTapAnimation(
      //   onTap: iconTap,
      //   child: child,
      // ),
    
  );
}
