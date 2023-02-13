// ignore_for_file: unnecessary_string_interpolations
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/home_controller.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/linkapi.dart';
import 'package:mediamaxweb/view/widget/linecolordetails.dart';

class CardWork extends GetView<HomeControllerImp> {
  const CardWork({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: controller.webwork.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  controller.llaunchUrl(
                      Uri.parse(controller.webwork[index]["urlvideo"]));
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Column(
                      children: [
                        Container(
                            height: 300,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                FadeInImage.assetNetwork(
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: 400,
                                    placeholder: 'assets/images/loding.gif',
                                    image:
                                        "${AppLink.workimg}${controller.webwork[index]["urlimg"]}"),
                                ClipRRect(
                                  // Clip it cleanly.
                                  child: BackdropFilter(
                                    filter:
                                        ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                    child: Container(
                                      color: Colors.grey.withOpacity(0.1),
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                                FadeInImage.assetNetwork(
                                    fit: BoxFit.fill,
                                    width: double.infinity,
                                    placeholder: 'assets/images/loding.gif',
                                    image:
                                        "${AppLink.workimg}${controller.webwork[index]["urlimg"]}"),
                              ],
                            )),
                        LineColorDetails(itemcount: 5),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, right: 8, left: 8),
                            alignment: Alignment.topRight,
                            color: AppColor.codgray,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "${controller.webwork[index]["title"]}",
                                  style: const TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 16,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.end,
                                ),
                                Text(
                                  "${controller.webwork[index]["content"]}",
                                  style: const TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.w200),
                                ),
                                const Text(
                                  "زيارة الموقع",
                                  style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                      color: AppColor.m3,
                                      fontWeight: FontWeight.w200),
                                ),
                              ],
                            ))
                      ],
                    )),
              ));
        });
  }
}
