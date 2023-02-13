import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/home_controller.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/view/widget/cardhorizontal.dart';
import 'package:mediamaxweb/view/widget/cardwork.dart';

class HomeMida extends StatelessWidget {
  const HomeMida({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: AppColor.codgray,
            endDrawer: const Drawer(),
            body: SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CardHorizontal(arrysum: 2, imgurl: "moroad"),
                  const CardWork(),
                ],
              )),
            )));
  }
}
