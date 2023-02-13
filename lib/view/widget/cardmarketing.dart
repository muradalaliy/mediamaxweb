import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/home_controller.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/linkapi.dart';

class CardMarketing extends GetView<HomeControllerImp> {
  const CardMarketing({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: controller.data.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  controller.gotomarketing();
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: 400,
                          child: FadeInImage.assetNetwork(
                              fit: BoxFit.cover,
                              width: double.infinity,
                              placeholder: 'assets/images/loding.gif',
                              image:
                                  "${AppLink.workimg}${controller.data[index]["image"]}"),
                        ),
                        Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.topRight,
                            color: AppColor.codgray,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "عرض المزيد",
                                  style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 14,
                                      color: AppColor.m3,
                                      fontWeight: FontWeight.w200),
                                ),
                                Text(
                                  "${controller.data[index]["title"]}",
                                  style: const TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 16,
                                      overflow: TextOverflow.ellipsis,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.end,
                                )
                              ],
                            ))
                      ],
                    )),
              ));
        });
  }
}
