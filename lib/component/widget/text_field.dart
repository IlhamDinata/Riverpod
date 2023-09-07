import 'package:flutter/material.dart';
import 'package:helloworld/component/style/mycolors.dart';
import 'package:helloworld/component/style/mytext.dart';
import 'package:helloworld/component/utils/dimens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Widget customTextField({
  required BuildContext context,
  String title = "",
  double radius = 15,
  Color color = MyColors.primaryBackground,
  required TextInputType textInputType,
  bool obscureText = false,
  required PhosphorIconData phosphorIconData,
  String hintText = "",
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: medium.copyWith(color: MyColors.primaryThreeElementText),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: Dimens(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              color: MyColors.primaryFourElementText,
            ),
          ),
          child: Row(
            children: [
              PhosphorIcon(phosphorIconData),
              Flexible(
                child: TextField(
                  keyboardType: textInputType,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    filled: true,
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: medium,
                  ),
                  onChanged: (value) {},
                  maxLines: 1,
                  autocorrect: false,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
