import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:helloworld/component/model/dummy_model.dart';
import 'package:helloworld/component/providers/theme_provider.dart';
import 'package:helloworld/component/style/mycolors.dart';
import 'package:helloworld/component/style/mytext.dart';
import 'package:helloworld/component/utils/dimens.dart';
import 'package:helloworld/component/widget/custom_appbar.dart';
import 'package:helloworld/component/widget/custom_button.dart';
import 'package:helloworld/screen/login/widget/login.dart';
import 'package:helloworld/screen/signup/view/signup_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeWidget extends ConsumerWidget {
  HomeWidget({super.key, this.isMobile = false});

  final bool? isMobile;

  final DataDummy dataDummy = DataDummy();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: customAppBar(
        title: "welcome".tr(args: ["Ilham"]),
        leading: true,
        iconLeading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    child: const LoginWidget(), type: PageTransitionType.fade));
          },
          child: ref.watch(darkModeProvider)
              ? PhosphorIcon(PhosphorIcons.regular.caretLeft)
              : PhosphorIcon(
                  PhosphorIcons.regular.caretLeft,
                  color: Colors.grey.shade700,
                ),
        ),
        centerTitle: true,
        child: [
          ZoomTapAnimation(
            onTap: () {
              ref.read(darkModeProvider.notifier).toggle();
            },
            child: ref.watch(darkModeProvider)
                ? Icon(
                    PhosphorIcons.fill.moonStars,
                  )
                : Icon(
                    PhosphorIcons.fill.sunDim,
                    color: Colors.grey.shade700,
                  ),
          ),
          // ZoomTapAnimation(
          //   onTap: () {},
          //   child: ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            20.verticalSpace,
            Text("infoLang".tr()),
            20.verticalSpace,
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
