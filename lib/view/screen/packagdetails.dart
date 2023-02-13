import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/data/model/packagemodel.dart';
import 'package:mediamaxweb/linkapi.dart';
import 'package:mediamaxweb/view/widget/linecolordetails.dart';
import 'package:mediamaxweb/view/widget/packagdetailsitem.dart';

class PackagDetails extends StatelessWidget {
  const PackagDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final PackageModel packageModel;
    packageModel = Get.arguments['packageModel'];

    return Scaffold(
        backgroundColor: AppColor.codgray,
        body: SafeArea(
          child: DraggableHome(
              title: Text(
                "${packageModel.title}",
                style: const TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 20,
                    color: AppColor.white,
                    fontWeight: FontWeight.w400),
              ),
              backgroundColor: AppColor.codgray,
              appBarColor: AppColor.m2,
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
                onPressed: () {},
                child: const Icon(Icons.share),
              ),
              alwaysShowTitle: true,
              fullyStretchable: true,
              alwaysShowLeadingAndAction: true,
              centerTitle: true,
              headerWidget: Center(
                  child: SizedBox(
                height: 400,
                child: FadeInImage.assetNetwork(
                    fit: BoxFit.cover,
                    width: double.infinity,
                    placeholder: 'assets/images/loding.gif',
                    image: "${AppLink.packageimg}${packageModel.image}"),
              )),
              body: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const LineColorDetails(itemcount: 5),
                    const SizedBox(height: 20),
                    PackagDetailsItem(
                      text1: packageModel.title,
                      text2: " : اسم الباقة ",
                    ),
                    PackagDetailsItem(
                      text1: packageModel.title,
                      text2: " : تفاصيل الباقة ",
                    )
                  ],
                )
              ]),
        ));
  }
}
