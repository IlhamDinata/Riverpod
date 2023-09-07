import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:helloworld/component/style/mycolors.dart';
import 'package:helloworld/component/style/mytext.dart';
import 'package:helloworld/component/utils/dimens.dart';
import 'package:helloworld/component/widget/custom_appbar.dart';
import 'package:helloworld/component/widget/custom_button.dart';
import 'package:helloworld/component/widget/text_field.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({super.key, this.isMobile = false});

  final bool? isMobile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "Sign Up",
        child: const SizedBox.shrink(),
        centerTitle: true,
        leading: false,
        // iconLeading: ZoomTapAnimation(
        //   onTap: () {
        //     Navigator.of(context).pop();
        //   },
        //   child: PhosphorIcon(PhosphorIcons.regular.caretLeft),
        // ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          35.verticalSpace,
          Align(
            alignment: Alignment.center,
            child: Text(
              "Enter your details below & free sign up",
              style: medium.copyWith(color: MyColors.primaryThreeElementText),
            ),
          ),
          35.verticalSpace,
          customTextField(
              context: context,
              title: "Username",
              textInputType: TextInputType.name,
              phosphorIconData: PhosphorIcons.regular.user,
              hintText: "Enter your user name"),
          20.verticalSpace,
          customTextField(
              context: context,
              title: "Email",
              textInputType: TextInputType.emailAddress,
              phosphorIconData: PhosphorIcons.regular.user,
              hintText: "Enter your email address"),
          20.verticalSpace,
          customTextField(
              context: context,
              title: "Password",
              textInputType: TextInputType.text,
              phosphorIconData: PhosphorIcons.regular.lock,
              hintText: "Enter your Password"),
          20.verticalSpace,
          customTextField(
              context: context,
              title: "Confirm Password",
              textInputType: TextInputType.name,
              phosphorIconData: PhosphorIcons.regular.user,
              hintText: "Enter your Confirm Password"),
          30.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "By creating an account you are agreeing with our terms and conditions",
              style: medium.copyWith(color: MyColors.primaryThreeElementText),
            ),
          ),
          // const Expanded(child: SizedBox.shrink()),
          70.verticalSpace,
          CustomButtonWidth(
            onTap: () {},
            width: Dimens(context).size.width,
            backgroundColor: MyColors.primaryElement,
            buttonText: "Register",
            style: large.copyWith(color: Colors.white),
          ),
          12.verticalSpace,
          CustomButtonWidth(
            onTap: () {
              Navigator.of(context).pop();
            },
            width: Dimens(context).size.width,
            backgroundColor: MyColors.primaryBackground,
            buttonText: "Back to Login",
            style: large.copyWith(color: Colors.black),
            borderColor: Colors.grey.shade700,
          ),
          40.verticalSpace,
        ],
      ),
    );
  }
}
