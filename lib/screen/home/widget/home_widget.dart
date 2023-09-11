import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:helloworld/component/style/mycolors.dart';
import 'package:helloworld/component/style/mytext.dart';
import 'package:helloworld/component/utils/dimens.dart';
import 'package:helloworld/component/widget/custom_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeWidget extends ConsumerWidget {
  const HomeWidget({super.key, this.isMobile = false});

  final bool? isMobile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Text("signIn".tr()),
            Text("signUp".tr()),
            CustomButtonWidth(
              onTap: () {
                context.setLocale(const Locale('id'));
              },
              width: Dimens(context).size.width,
              backgroundColor: MyColors.primaryElement,
              buttonText: "Indonesia",
              style: large.copyWith(color: Colors.white),
            ),
            10.verticalSpace,
            CustomButtonWidth(
              onTap: () {
                context.setLocale('en'.toLocale());
              },
              width: Dimens(context).size.width,
              backgroundColor: MyColors.primaryElement,
              buttonText: "English",
              style: large.copyWith(color: Colors.white),
            ),
          ],
        ),
      )),
    );
  }
}
