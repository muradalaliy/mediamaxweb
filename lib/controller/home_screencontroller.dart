import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/core/constant/routes.dart';
import 'package:mediamaxweb/view/screen/homescreen.dart';

abstract class AnimScreen extends GetxController {
  _onScroll();
  gotohome();
}

class AnimScreenImp extends AnimScreen {
  late ScrollController scrollController;

  List customers2 = [
    "assets/2/Template_3_00070.png",
    "assets/2/الكبوس.png",
    "assets/2/الكلية-العالمية.png",
    "assets/2/الماس-مول.png",
    "assets/2/المميز.png",
    "assets/2/النجم.png",
    "assets/2/اليمنية.png",
    "assets/2/تويستر.png",
    "assets/2/تيليمن.png",
    "assets/2/ytac.png",
    "assets/2/د-مها.png",
    "assets/2/ربوع.png",
    "assets/2/سهل.png",
    "assets/2/hodaicon.png",
    "assets/2/شعار موسسة الضبياني 1.png",
    "assets/2/صندوق النظافة والتحسين.png",
    "assets/2/علمار.png",
    "assets/2/كاك.png",
    "assets/2/مستشفى-لبنان.png",
    "assets/2/مستشفى-يشفين.png",
    "assets/2/مؤسسة-الحبوب.png",
    "assets/2/هاي.png",
    "assets/2/هاي.png",
    "assets/1/Asset 1.png",
    "assets/1/Asset 2.png",
    "assets/1/Asset 3.png",
    "assets/1/chik.png",
    "assets/1/Logo.png",
    "assets/1/mnaseb__AIE.png",
    "assets/1/mtn.png",
    "assets/1/speed.png",
    "assets/1/sssssssssss.png",
    "assets/1/work.png",
    "assets/1/اسمنت-الاتحاد.png",
    "assets/1/الامتياز.png",
    "assets/1/البحر.png",
    "assets/1/البنك-التجاري.png",
    "assets/1/التاج.png",
    "assets/1/الحجر-الأسود.png",
    "assets/1/الشباب والرياضة.png",
    "assets/1/القناعه.png",
    "assets/1/لوزي.png",
    "assets/1/مافكو.png",
    "assets/1/مالية.png",
    "assets/1/مختبرات.png",
    "assets/1/مستشفى-رباط.png",
  ];

  //layerSpeed
  final double layer1Speed = 0.5;
  double layer2Speed = 0.45;
  final double layer3Speed = 0.42;
  final double layer4Speed = 0.375;
  final double sunSpeed = 0.18;

  //layer horizntl SpeedS
  final double layer1HSpeed = 0.1;
  final double layer2HSpeed = 0.08;
  final double layer3HSpeed = 0.075;
  final double layer4HSpeed = 0.07;

  @override
  void onInit() {
    scrollController = ScrollController()
      ..addListener(() {
        _onScroll();
      });
    super.onInit();
  }

  double scrolloffset = 0.0;
  @override
  void _onScroll() {
    scrolloffset = scrollController.offset;
    print(scrolloffset);
    update();
  }

  @override
  void gotohome() {
    // Get.toNamed(AppRoute.homepage);
    // scrollController.jumpTo(0);
    scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.easeIn);
    Future.delayed(const Duration(seconds: 1), () {
      Get.offAllNamed(AppRoute.homepage);
    });
  }

  @override
  void animionbottom() {
    // Get.toNamed(AppRoute.homepage);
    // scrollController.jumpTo(0);
    scrollController.animateTo(2000,
        duration: const Duration(seconds: 1), curve: Curves.easeIn);
  }
}

//dr-maha-albaydani-hosP123!@#
//dr-maha-albaydani-hosp.com