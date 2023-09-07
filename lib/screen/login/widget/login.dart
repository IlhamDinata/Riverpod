import 'package:flutter/material.dart';
import 'package:helloworld/component/providers/theme_provider.dart';

import 'package:helloworld/component/style/mycolors.dart';
import 'package:helloworld/component/style/mytext.dart';
import 'package:helloworld/component/widget/custom_appbar.dart';
import 'package:helloworld/component/widget/social_media_sign.dart';
import 'package:helloworld/component/widget/text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class LoginWidget extends HookConsumerWidget {
  const LoginWidget({super.key, this.isMobile = false});

  final bool? isMobile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: customAppBar(
          title: "Log In",
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
        body: Column(
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
            InkWell(
              onTap: () {},
              splashColor: Colors.transparent,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Forgot Password ?",
                  style:
                      medium.copyWith(color: MyColors.primaryThreeElementText),
                ),
              ),
            ),
          ],
        ));
  }
}
