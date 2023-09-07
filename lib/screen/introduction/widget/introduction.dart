import 'package:flutter/material.dart';
import 'package:helloworld/component/style/mytext.dart';
import 'package:helloworld/screen/login/view/login_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final indexProvider = StateProvider<int>((ref) => 0);

class IntroductionWidget extends StatefulWidget {
  const IntroductionWidget({super.key, this.isMobile = false});

  final bool? isMobile;

  @override
  State<IntroductionWidget> createState() => _IntroductionWidgetState();
}

PageController pageController = PageController();
bool onLastIntroPage = false;

class _IntroductionWidgetState extends State<IntroductionWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (widget.isMobile == true)
            PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  onLastIntroPage = (index == 2);
                });
              },
              children: [
                introductionViewMobile(
                    assets: 'assets/images/reading.png',
                    title: 'First See Learning',
                    subTitle:
                        'Forget about of paper, now learning all in one place'),
                        
                introductionViewMobile(
                    assets: 'assets/images/man.png',
                    title: 'Connect With Everyone',
                    subTitle:
                        "Always keep in touch with your tutor and friends. Let's get connected"),
                introductionViewMobile(
                    assets: 'assets/images/boy.png',
                    title: 'Always Facinated Learning ',
                    subTitle:
                        'Anywhere, anytime. The time is your discretion. So study wherever you can'),
              ],
            )
          else
            PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  onLastIntroPage = (index == 2);
                });
              },
              children: [
                introductionViewTablet(
                    assets: 'assets/images/reading.png',
                    title: 'First See Learning',
                    subTitle:
                        'Forget about of paper, now learning all in one place'),
                introductionViewTablet(
                    assets: 'assets/images/man.png',
                    title: 'Connect With Everyone',
                    subTitle:
                        "Always keep in touch with your tutor and friends. Let's get connected"),
                introductionViewTablet(
                    assets: 'assets/images/boy.png',
                    title: 'Always Facinated Learning ',
                    subTitle:
                        'Anywhere, anytime. The time is your discretion. So study wherever you can'),
              ],
            ),
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    pageController.jumpToPage(2);
                  },
                  child: Text(
                    'Skip',
                    style: medium,
                  ),
                ),
                SmoothPageIndicator(controller: pageController, count: 3),
                onLastIntroPage
                    ? GestureDetector(
                        onTap: () {
                        
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: const LoginPage(),
                                  type: PageTransitionType.fade));
                        },
                        child: Text(
                          'Done',
                          style: medium,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text(
                          'Next',
                          style: medium,
                        ),
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget introductionViewMobile(
    {required String assets, required String title, required String subTitle}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        assets,
        fit: BoxFit.fitWidth,
      ),
      const SizedBox(height: 15),
      Text(
        title,
        style: medium.copyWith(fontSize: 24),
        textAlign: TextAlign.center,
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          subTitle,
          style: medium.copyWith(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}

Widget introductionViewTablet(
    {required String assets, required String title, required String subTitle}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        assets,
        fit: BoxFit.fitWidth,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 15),
          Text(
            title,
            style: medium.copyWith(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(top: 15, right: 20),
              child: Text(
                subTitle,
                style: medium.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
