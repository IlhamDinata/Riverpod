import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomButtonWidth extends StatelessWidget {
  CustomButtonWidth(
      {super.key,
      this.width,
      this.circular,
      this.borderColor,
      required this.backgroundColor,
      this.leftIcon,
      this.iconColor,
      required this.buttonText,
      required this.style,
      this.rightIcon,});

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
    return Container(
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(circular ?? 12),
          border: Border.all(color: borderColor ?? Colors.white),
          color: backgroundColor),
      child: Row(
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
    );
  }
}
