import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/home_screencontroller.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/view/widget/onboarding/coustombttwo.dart';
import 'package:mediamaxweb/view/widget/onboarding/custombuttononboarding.dart';

class TestVieww extends StatelessWidget {
  const TestVieww({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AnimScreenImp());
    var screenSize = MediaQuery.of(context).size;
    var layoutHeight = screenSize.height * 3;

    return GetBuilder<AnimScreenImp>(
        builder: ((controller) => Scaffold(
              body: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromARGB(255, 66, 240, 210),
                      Color.fromARGB(255, 253, 244, 193),
                    ])),
                child: Stack(children: [
                  Positioned(
                    bottom: screenSize.height * 0.05 +
                        (controller.scrolloffset * controller.sunSpeed),
                    right: screenSize.width * 0.3,
                    left: 0,
                    child: SvgPicture.asset("assets/images/mediamaxicon.svg"),
                  ),
                  Positioned(
                    bottom: controller.layer4Speed * controller.scrolloffset,
                    right:
                        controller.layer4HSpeed * controller.scrolloffset * -1,
                    left:
                        controller.layer4HSpeed * controller.scrolloffset * -1,
                    height: screenSize.height,
                    child: SvgPicture.asset(
                      "assets/images/mountains-layer-4.svg",
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Positioned(
                    bottom: controller.layer3Speed * controller.scrolloffset,
                    right:
                        controller.layer3HSpeed * controller.scrolloffset * -1,
                    left:
                        controller.layer3HSpeed * controller.scrolloffset * -1,
                    height: screenSize.height,
                    child: SvgPicture.asset(
                      "assets/images/mountains-layer-2.svg",
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Positioned(
                    bottom: controller.layer2Speed * controller.scrolloffset,
                    right:
                        controller.layer2HSpeed * controller.scrolloffset * -1,
                    left:
                        controller.layer2HSpeed * controller.scrolloffset * -1,
                    height: screenSize.height,
                    child: SvgPicture.asset(
                      "assets/images/trees-layer-2.svg",
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Positioned(
                    bottom:
                        -20 + controller.layer1Speed * controller.scrolloffset,
                    right:
                        controller.layer1HSpeed * controller.scrolloffset * -1,
                    left:
                        controller.layer1HSpeed * controller.scrolloffset * -1,
                    height: screenSize.height,
                    child: SvgPicture.asset(
                      "assets/images/layer-1.svg",
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Positioned(
                    bottom:
                        -1 + controller.layer1Speed * controller.scrolloffset,
                    right:
                        controller.layer1HSpeed * controller.scrolloffset * -1,
                    left:
                        controller.layer1HSpeed * controller.scrolloffset * -1,
                    height: screenSize.height,
                    child: Container(
                        alignment: Alignment.bottomCenter,
                        child: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: AppColor.white,
                        )),
                  ),
                  Positioned.fill(
                    top: screenSize.height +
                        (controller.layer1Speed * controller.scrolloffset * -1),
                    right: 0,
                    left: 0,
                    child: Container(
                        color: AppColor.black,
                        child: SingleChildScrollView(
                          child: Column(children: [
                            const SizedBox(
                              height: 50,
                            ),
                            // const TitlHome(titel: 'من نحن'),
                            const Text(
                              textAlign: TextAlign.center,
                              "...مرحبا ",
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 24,
                                  overflow: TextOverflow.clip,
                                  color: AppColor.m2,
                                  fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "نحن شركة ميديا ماكس .. نحب الابتكار،ونسعى دائما لتطوير قدراتنا، كما نسعى لإيجاد مساحة كافية لنوصل من خلالها أفكارنا ورسائلنا وخدماتنا الإبداعية والمتميزة",
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
                                  overflow: TextOverflow.clip,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              textAlign: TextAlign.center,
                              "...لهذا ",
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 25,
                                  overflow: TextOverflow.clip,
                                  color: AppColor.m2,
                                  fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "ابتكرنا طريقة جديدة لتقديم أنفسنا وخدماتنا لكم بإيجاز.. وذلك لحرصنا الشديد على خلق شراكة متميزة ودائمة معكم",
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
                                  overflow: TextOverflow.clip,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ]),
                        )),
                  ),
                  Positioned(
                      child: SingleChildScrollView(
                    controller: controller.scrollController,
                    child: SizedBox(
                        height: layoutHeight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Opacity(
                              opacity: controller.scrolloffset == 0 ? 1.0 : 0.0,
                              child: CustomButtonOnBoarding(),
                            ),
                            SizedBox(
                              height: layoutHeight / 2 + 80,
                            ),
                            CarouselSlider(
                              options: CarouselOptions(
                                height: 300.0,
                                autoPlay: true,
                                enlargeCenterPage: true,
                                viewportFraction: 0.9,
                                autoPlayInterval: const Duration(seconds: 1),
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                aspectRatio: 1.0,
                                initialPage: 1,
                              ),
                              items: controller.customers2.map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: Image.asset(
                                          i,
                                        ));
                                  },
                                );
                              }).toList(),
                            ),
                            CoustomBttwo(),
                          ],
                        )),
                  ))
                ]),
              ),
            )));
  }
}
