import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:helloworld/component/providers/theme_provider.dart';

import 'package:helloworld/component/style/mycolors.dart';
import 'package:helloworld/component/style/mytext.dart';
import 'package:helloworld/component/utils/dimens.dart';
import 'package:helloworld/component/widget/bottom_navbar.dart';
import 'package:helloworld/component/widget/custom_appbar.dart';
import 'package:helloworld/component/widget/custom_button.dart';
import 'package:helloworld/component/widget/social_media_sign.dart';
import 'package:helloworld/component/widget/text_field.dart';
import 'package:helloworld/screen/home/view/home_page.dart';
import 'package:helloworld/screen/signup/view/signup_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class LoginWidget extends HookConsumerWidget {
  const LoginWidget({super.key, this.isMobile = false});

  final bool? isMobile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return loginScreen(context, ref);
  }
}

Widget loginScreen(
  BuildContext context,
  WidgetRef ref,
) {
  return Scaffold(
    appBar: customAppBar(
      title: "signIn".tr(),
      leading: false,
      centerTitle: true,
      child: ref.watch(darkModeProvider)
          ? Icon(
              PhosphorIcons.fill.moonStars,
            )
          : Icon(
              PhosphorIcons.fill.sunDim,
              color: Colors.grey.shade700,
            ),
      iconTap: () => ref.read(darkModeProvider.notifier).toggle(),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          thirdPartyLogin(),
          Text(
            "Or use your email account to login",
            style: medium.copyWith(color: MyColors.primaryThreeElementText),
          ),
          const SizedBox(height: 50),
          customTextField(
              context: context,
              title: "Email",
              phosphorIconData: PhosphorIcons.regular.user,
              hintText: "Enter your email address",
              textInputType: TextInputType.emailAddress),
          const SizedBox(height: 20),
          customTextField(
              context: context,
              title: "Password",
              phosphorIconData: PhosphorIcons.regular.lock,
              hintText: "Enter your password",
              textInputType: TextInputType.text,
              obscureText: true),
          10.verticalSpace,
          ZoomTapAnimation(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              alignment: Alignment.centerLeft,
              child: Text(
                "Forgot Password ?",
                style: medium.copyWith(decoration: TextDecoration.underline),
              ),
            ),
          ),
          // const Expanded(child: SizedBox()),
          195.verticalSpace,
          CustomButtonWidth(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const HomePage(), type: PageTransitionType.fade));
            },
            width: Dimens(context).size.width,
            backgroundColor: MyColors.primaryElement,
            buttonText: "Login",
            style: large.copyWith(color: Colors.white),
          ),
          12.verticalSpace,
          CustomButtonWidth(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const SignUpPage(),
                      type: PageTransitionType.fade));
            },
            width: Dimens(context).size.width,
            backgroundColor: MyColors.primaryBackground,
            buttonText: "Sign Up",
            style: large.copyWith(color: Colors.black),
            borderColor: Colors.grey.shade700,
          ),
          40.verticalSpace,
        ],
      ),
    ),
  );
}
