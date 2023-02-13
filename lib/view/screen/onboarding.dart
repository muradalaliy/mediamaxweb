import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mediamaxweb/controller/onboardingcontroller.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/data/datasource/static/static.dart';
import 'package:mediamaxweb/view/widget/onboarding/customslideronboarding.dart';
import 'package:mediamaxweb/view/widget/onboarding/dotcontroller.dart';
import 'package:sizer/sizer.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());

    return Sizer(builder: (context, orientation, deviceType) {
      print(deviceType);
      return Scaffold(
        backgroundColor: AppColor.codgray,
        body: SafeArea(
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: AppColor.codgray,
                child: Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 40),
                          height: 25.h,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(124, 255, 255, 255)),
                        ),
                        Lottie.asset(onBoardingList[3].image!,
                            height: 20.h, fit: BoxFit.cover),
                        SvgPicture.asset("assets/images/mediamaxicon.svg",
                            height: 40.h),
                      ],
                    ),
                    const Flexible(
                      flex: 7,
                      child: CustomSliderOnBoarding(),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            // CustomButtonOnBoarding(),
                            CustomDotControllerOnBoarding(),
                          ]),
                    ),
                  ],
                ))),
      );
    });
  }
}
