import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/homescreen_controller.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/view/widget/custombuttonappbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: ((controller) => Scaffold(
            backgroundColor: AppColor.m2,
            floatingActionButton: FloatingActionButton(
              backgroundColor: controller.curentPage == 0
                  ? AppColor.white
                  : controller.curentPage == 1
                      ? AppColor.m3
                      : controller.curentPage == 2
                          ? AppColor.m2
                          : controller.curentPage == 2
                              ? AppColor.m3
                              : AppColor.m1,
              onPressed: () {
                controller.changePage(0);
              },
              child: SvgPicture.asset(
                "assets/images/mediamaxicon.svg",
                color: controller.curentPage == 0 ? null : AppColor.white,
                height: 60,
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.endDocked,
            bottomNavigationBar: BottomAppBar(
                color: AppColor.codgray,
                shape: const CircularNotchedRectangle(),
                notchMargin: 10,
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 30),
                        CustomButtonAppBar(
                          textbutton: "الانتاج",
                          active: controller.curentPage == 1 ? true : false,
                          icondata: Icons.video_camera_back_outlined,
                          onPressed: () {
                            controller.changePage(1);
                          },
                        ),
                        CustomButtonAppBar(
                          textbutton: "التسويق",
                          active: controller.curentPage == 2 ? true : false,
                          icondata: Icons.podcasts,
                          onPressed: () {
                            controller.changePage(2);
                          },
                        ),
                        CustomButtonAppBar(
                          textbutton: "التقنية",
                          active: controller.curentPage == 3 ? true : false,
                          icondata: Icons.web_stories,
                          onPressed: () {
                            controller.changePage(3);
                          },
                        )
                      ],
                    ),
                  ],
                )),
            body: controller.listPage.elementAt(controller.curentPage))));
  }
}
