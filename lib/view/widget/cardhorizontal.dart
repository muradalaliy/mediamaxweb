import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/home_controller.dart';
import 'package:mediamaxweb/core/class/handlingdataview.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/data/model/packagemodel.dart';
import 'package:mediamaxweb/linkapi.dart';

class CardHorizontal extends StatelessWidget {
  final int arrysum;
  final String imgurl;
  const CardHorizontal(
      {super.key, required this.arrysum, required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllerImp>(builder: ((controller) {
      return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: Container(
            // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            height: MediaQuery.of(context).size.height * 0.25,
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.package.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: const EdgeInsets.all(3),
                      width: MediaQuery.of(context).size.width * 0.89,
                      child: InkWell(
                        onTap: () {
                          final PackageModel packageModel =
                              PackageModel.fromJson(controller.package[index]);

                          controller.gotoPackage(packageModel);
                        },
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  height: 300,
                                  child: FadeInImage.assetNetwork(
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      placeholder: 'assets/images/loding.gif',
                                      image:
                                          '${AppLink.packageimg}${controller.package[index]["image"]}'),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  alignment: Alignment.center,
                                  color:
                                      const Color.fromARGB(23, 255, 255, 255),
                                  height: 50,
                                  child: Text(
                                    "${controller.package[index]["title"]}",
                                    style: const TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: 14,
                                        color: AppColor.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            )),
                      ));
                }),
          ));
    }));
  }
}
