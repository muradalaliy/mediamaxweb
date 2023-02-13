import 'dart:developer';
import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/core/constant/routes.dart';

class ClientsCardTwo extends StatelessWidget {
  ClientsCardTwo({super.key});
  List customers = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        child: Row(
          children: [
            Container(
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width / 2,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 250.0,
                  autoPlay: true,
                  padEnds: true,
                  enlargeCenterPage: true,
                  autoPlayInterval: const Duration(seconds: 1),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  animateToClosest: true,
                  aspectRatio: 16 / 9,
                  onPageChanged: (index, reason) {
                    if (index == customers.length - 1) {
                      Get.toNamed(AppRoute.splshscreen);
                      print("moorad laliy");
                    } else {}
                  },
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  enlargeFactor: 5.3,
                  disableCenter: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  autoPlayCurve: Curves.easeInBack,
                  pauseAutoPlayInFiniteScroll: true,
                  viewportFraction: 0.9,
                  initialPage: 1,
                ),
                items: customers2.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image.asset(
                            i,
                          ));
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              alignment: Alignment.center,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 250.0,
                  autoPlay: true,
                  reverse: true,
                  padEnds: true,
                  enlargeCenterPage: true,
                  autoPlayInterval: const Duration(seconds: 1),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  animateToClosest: true,
                  aspectRatio: 16 / 9,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  enlargeFactor: 5.3,
                  disableCenter: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  autoPlayCurve: Curves.easeInBack,
                  viewportFraction: 0.9,
                  initialPage: 1,
                  onPageChanged: (index, reason) {
                    print(customers[index]);
                  },
                ),
                items: customers.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image.asset("$i"));
                    },
                  );
                }).toList(),
              ),
            )
          ],
        ),
      )),
    );
  }
}
