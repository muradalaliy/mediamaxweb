import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/onboardingcontroller.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 15),
                          duration: const Duration(milliseconds: 900),
                          width: controller.currentPage == index ? 40 : 10,
                          height: 15,
                          decoration: BoxDecoration(
                              color: controller.currentPage == index
                                  ? AppColor.m2
                                  : AppColor.white,
                              borderRadius: BorderRadius.circular(20)),
                        ))
              ],
            ));
  }
}
