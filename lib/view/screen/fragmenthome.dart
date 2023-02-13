import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/home_controller.dart';
import 'package:mediamaxweb/core/class/handlingdataview.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/view/widget/cardmarketing.dart';
import 'package:mediamaxweb/view/widget/cardmontage.dart';
import 'package:mediamaxweb/view/widget/cardwork.dart';
import 'package:mediamaxweb/view/widget/home/clientscard.dart';
import 'package:mediamaxweb/view/widget/home/titalhome.dart';
import 'package:sizer/sizer.dart';

class FragmentHome extends StatelessWidget {
  const FragmentHome({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    return Scaffold(
        backgroundColor: AppColor.codgray,
        body: SafeArea(
          child: DraggableHome(
              title: const Text(
                "ميديا ماكس ",
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 25,
                    color: AppColor.white,
                    fontWeight: FontWeight.w400),
              ),
              fullyStretchable: false,
              backgroundColor: AppColor.black,
              appBarColor: AppColor.codgray,
              alwaysShowTitle: false,
              headerWidget: Container(
                color: AppColor.codgray,
                child: ClientsCard(),
              ),
              body: [
                Column(
                  children: [
                    const TitlHome(
                      titel: "اعمالنا",
                    ),
                    GetBuilder<HomeControllerImp>(builder: ((controller) {
                      return HandlingDataView(
                          statusRequest: controller.statusRequest,
                          widget: const CardWork());
                    })),
                    const TitlHome(
                      titel: "الانتاج ",
                    ),
                    GetBuilder<HomeControllerImp>(builder: ((controller) {
                      return HandlingDataView(
                          statusRequest: controller.statusRequest,
                          widget: const CardMontage());
                    })),
                    const TitlHome(
                      titel: "التسويق",
                    ),
                    GetBuilder<HomeControllerImp>(builder: ((controller) {
                      return HandlingDataView(
                          statusRequest: controller.statusRequest,
                          widget: const CardMarketing());
                    })),
                  ],
                )
              ]),
        ));
  }
}
