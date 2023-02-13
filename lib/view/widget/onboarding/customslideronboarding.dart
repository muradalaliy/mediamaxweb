import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/onboardingcontroller.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/data/datasource/static/static.dart';
import 'package:sizer/sizer.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "...مرحبا ",
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 13.sp,
                      overflow: TextOverflow.clip,
                      color: AppColor.m2,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "نحن فريق ميديا ماكس .. نحب الابتكار،ونسعى دائما لتطوير قدراتنا، كما نسعى لإيجاد مساحة كافية لنوصل من خلالها أفكارنا ورسائلنا وخدماتنا الإبداعية والمتميزة. لهذا .. ابتكرنا طريقة جديدة لتقديم أنفسنا وخدماتنا لكم بإيجاز.. وذلك لحرصنا الشديد على خلق شراكة متميزة ودائمة معكم.",
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      overflow: TextOverflow.clip,
                      color: AppColor.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ));
  }
}
