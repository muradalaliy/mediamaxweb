import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/core/constant/routes.dart';

class SplshScreen extends StatelessWidget {
  const SplshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.codgray,
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 25.0,
                    color: AppColor.white,
                    fontFamily: 'Cairo',
                  ),
                  child: AnimatedTextKit(
                    onFinished: () {
                      Get.toNamed(AppRoute.onbording);
                    },
                    animatedTexts: [
                      FadeAnimatedText('ميديا ماكس',
                          textStyle: const TextStyle(color: AppColor.m2)),
                      FadeAnimatedText('انتاجية',
                          textStyle: const TextStyle(color: AppColor.m2)),
                      RotateAnimatedText('تسويقية..',
                          textStyle: const TextStyle(color: AppColor.m3)),
                      FadeAnimatedText('تقنية',
                          textStyle: const TextStyle(color: AppColor.m1)),
                    ],
                  ),
                ),
                const SizedBox(width: 10.0),
                SvgPicture.asset("assets/images/mediamaxicon.svg", height: 300),
                const SizedBox(width: 20.0),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
