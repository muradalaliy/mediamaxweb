import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/home_screencontroller.dart';
import 'package:mediamaxweb/core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<AnimScreenImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, bottom: 20),
      height: 40,
      width: 120,
      child: ElevatedButton.icon(
        onPressed: () {
          controller.animionbottom();
        },
        icon:
            const Icon(Icons.rocket_launch, size: 18, color: AppColor.codgray),
        label: const Text(
          ' استكشف ',
          style: TextStyle(
              fontSize: 14,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: AppColor.codgray),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 255, 191, 0),
          elevation: 0,
          padding: const EdgeInsets.only(right: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
      ),
    );
  }
}
