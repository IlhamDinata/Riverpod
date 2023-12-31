import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class CustomButtonWidth extends StatelessWidget {
  CustomButtonWidth({
    required this.onTap,
    super.key,
    this.width,
    this.circular,
    this.borderColor,
    required this.backgroundColor,
    this.leftIcon,
    this.iconColor,
    required this.buttonText,
    required this.style,
    this.rightIcon,
  });

  final Function()? onTap;
  double? width;
  double? circular;
  Color? borderColor;
  final Color backgroundColor;
  IconData? leftIcon;
  Color? iconColor;
  final String buttonText;
  final TextStyle style;
  IconData? rightIcon;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        width: width,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(circular ?? 12),
            border: Border.all(color: borderColor ?? Colors.white),
            color: backgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            leftIcon != null
                ? Icon(
                    leftIcon,
                    color: iconColor,
                  )
                : const SizedBox.shrink(),
            Text(buttonText, style: style),
            rightIcon != null
                ? Icon(
                    rightIcon,
                    color: iconColor,
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
