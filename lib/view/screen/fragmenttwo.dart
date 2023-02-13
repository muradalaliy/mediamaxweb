import 'dart:ui';

import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/home_controller.dart';
import 'package:mediamaxweb/core/class/handlingdataview.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/linkapi.dart';
import 'package:mediamaxweb/view/widget/cardmontage.dart';
import 'package:mediamaxweb/view/widget/cardwork.dart';
import 'package:mediamaxweb/view/widget/home/titalhome.dart';

class FragmentTwo extends StatelessWidget {
  const FragmentTwo({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    return Scaffold(
        backgroundColor: AppColor.m3,
        body: SafeArea(
          child: DraggableHome(
              title: const Text(
                " الانتاج ",
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 25,
                    color: AppColor.white,
                    fontWeight: FontWeight.w400),
              ),
              backgroundColor: AppColor.black,
              appBarColor: AppColor.m3,
              alwaysShowTitle: false,
              headerWidget: Center(
                  child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  FadeInImage.assetNetwork(
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 400,
                      placeholder: 'assets/images/loding.gif',
                      image: "${AppLink.workimg}cash4new.jpg"),
                  ClipRRect(
                    // Clip it cleanly.
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        color:
                            Color.fromARGB(131, 2, 138, 242).withOpacity(0.1),
                        alignment: Alignment.center,
                        child: const Text(
                          " اعمالنا في الانتاج والاعلان ",
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 25,
                              color: AppColor.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
              body: [
                Column(
                  children: [
                    const TitlHome(
                      titel: "الانتاج",
                    ),
                    GetBuilder<HomeControllerImp>(builder: ((controller) {
                      return HandlingDataView(
                          statusRequest: controller.statusRequest,
                          widget: const CardMontage());
                    })),
                  ],
                )
              ]),
        ));
  }
}
