import 'dart:ui';

import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/home_controller.dart';
import 'package:mediamaxweb/core/class/handlingdataview.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/linkapi.dart';
import 'package:mediamaxweb/view/widget/cardhorizontal.dart';
import 'package:mediamaxweb/view/widget/cardmarketing.dart';
import 'package:mediamaxweb/view/widget/home/titalhome.dart';

class FragmenThere extends StatelessWidget {
  const FragmenThere({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    return Scaffold(
        backgroundColor: AppColor.m2,
        body: SafeArea(
          child: DraggableHome(
              title: const Text(
                " التسويق ",
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 25,
                    color: AppColor.white,
                    fontWeight: FontWeight.w400),
              ),
              backgroundColor: AppColor.black,
              appBarColor: AppColor.m2,
              alwaysShowTitle: true,
              headerWidget: Center(
                  child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  FadeInImage.assetNetwork(
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 400,
                      placeholder: 'assets/images/loding.gif',
                      image: "${AppLink.workimg}medfbst.jpg"),
                  ClipRRect(
                    // Clip it cleanly.
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        color: const Color.fromARGB(106, 255, 191, 0)
                            .withOpacity(0.1),
                        alignment: Alignment.center,
                        child: const Text(
                          " اعمالنا في التسويق الالكتروني ",
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 25,
                              color: AppColor.black,
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
                      titel: "الباقات",
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 30),
                      child: const CardHorizontal(
                        arrysum: 3,
                        imgurl: "moorad",
                      ),
                    ),
                    const TitlHome(
                      titel: "اعمالنا",
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
