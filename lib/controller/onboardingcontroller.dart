import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/core/constant/routes.dart';
import 'package:mediamaxweb/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
  autochingpage();
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      // Get.to(HomeScreen());
      Get.toNamed(AppRoute.homepage);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 800),
          curve: Curves.slowMiddle);
    }
  }

  @override
  autochingpage() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      print(DateTime.now());
      next();
    });
  }

  @override
  onPageChanged(int index) {
    currentPage = index;

    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
    autochingpage();
  }
}
