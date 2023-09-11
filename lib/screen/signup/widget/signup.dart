import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:helloworld/component/style/mycolors.dart';
import 'package:helloworld/component/style/mytext.dart';
import 'package:helloworld/component/utils/dimens.dart';
import 'package:helloworld/component/widget/custom_appbar.dart';
import 'package:helloworld/component/widget/custom_button.dart';
import 'package:helloworld/component/widget/text_field.dart';
import 'package:helloworld/screen/home/view/home_page.dart';
import 'package:helloworld/screen/signup/notifier/register_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class SignUpWidget extends ConsumerWidget {
  SignUpWidget({super.key, this.isMobile = false});

  final bool? isMobile;

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final regProvider = ref.watch(registerNotifierProvider);
    return Scaffold(
      appBar: customAppBar(
        title: "signUp".tr(),
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
      body: SingleChildScrollView(
        child: Column(
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
            // textFormField(
            //     controller: emailController,
            //     textInputType: TextInputType.emailAddress,
            //     hintText: "Enter your email address",
            //     prefixIcon: PhosphorIcon(PhosphorIcons.regular.user),
            //     errorText: "Email Can't Empty"),
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
                phosphorIconData: PhosphorIcons.regular.lock,
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
            64.verticalSpace,
            CustomButtonWidth(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const HomePage(),
                        type: PageTransitionType.fade));
              },
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
      ),
    );
  }
}
