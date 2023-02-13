import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/home_controller.dart';
import 'package:mediamaxweb/core/class/handlingdataview.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/view/widget/cardhorizontal.dart';
import 'package:mediamaxweb/view/widget/cardwork.dart';
import 'package:mediamaxweb/view/widget/home/titalhome.dart';

class FragmentFour extends StatelessWidget {
  const FragmentFour({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    return Scaffold(
        backgroundColor: AppColor.m1,
        body: SafeArea(
          child: DraggableHome(
              title: const Text(
                " تقنية المعلومات ",
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 25,
                    color: AppColor.white,
                    fontWeight: FontWeight.w400),
              ),
              backgroundColor: AppColor.black,
              appBarColor: AppColor.m1,
              alwaysShowTitle: false,
              headerWidget: const Center(
                child: Text(
                  " اعمالنا في تقنية المعلومات ",
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 25,
                      color: AppColor.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
              body: [
                Column(
                  children: [
                    const TitlHome(
                      titel: "المواقع",
                    ),
                    GetBuilder<HomeControllerImp>(builder: ((controller) {
                      return HandlingDataView(
                          statusRequest: controller.statusRequest,
                          widget: const CardWork());
                    })),
                  ],
                )
              ]),
        ));
  }
}
