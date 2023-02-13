import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/home_controller.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/linkapi.dart';

class CardMontage extends GetView<HomeControllerImp> {
  const CardMontage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: controller.adsvid.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  controller.llaunchUrl(
                      Uri.parse(controller.adsvid[index]["urlvideo"]));
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Column(
                      children: [
                        Container(
                            height: 250,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                FadeInImage.assetNetwork(
                                    fit: BoxFit.contain,
                                    width: double.infinity,
                                    placeholder: 'assets/images/loding.gif',
                                    image:
                                        "${AppLink.workimg}${controller.adsvid[index]["urlimg"]}"),
                                Container(
                                  child: const Icon(
                                    Icons.slow_motion_video,
                                    color: Colors.white,
                                    size: 100.0,
                                  ),
                                )
                              ],
                            )),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, right: 8, left: 8),
                            alignment: Alignment.topRight,
                            color: AppColor.codgray,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "${controller.adsvid[index]["title"]}",
                                  style: const TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 16,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.end,
                                ),
                                Text(
                                  "${controller.adsvid[index]["content"]}",
                                  style: const TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.w200),
                                ),
                                const Text(
                                  "مشاهدة",
                                  style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                      color: AppColor.m3,
                                      fontWeight: FontWeight.w200),
                                ),
                              ],
                            )),
                      ],
                    )),
              ));
        });
  }
}
