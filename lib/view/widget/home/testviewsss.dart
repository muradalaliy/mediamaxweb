import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/controller/home_controller.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/view/widget/cardmarketing.dart';
import 'package:mediamaxweb/view/widget/cardwork.dart';
import 'package:mediamaxweb/view/widget/home/titalhome.dart';

class TestViewsss extends StatefulWidget {
  const TestViewsss({super.key});

  @override
  State<TestViewsss> createState() => _TestViewsssState();
}

class _TestViewsssState extends State<TestViewsss> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        _onScroll();
      });
    super.initState();
  }

  double _scrolloffset = 0.0;

  void _onScroll() {
    setState(() {
      _scrolloffset = _scrollController.offset;
    });
  }

//layerSpeed
  final double _layer1Speed = 0.5;
  final double _layer2Speed = 0.45;
  final double _layer3Speed = 0.42;
  final double _layer4Speed = 0.375;
  final double _sunSpeed = 0.18;

  //layer horizntl SpeedS
  final double _layer1HSpeed = 0.1;
  final double _layer2HSpeed = 0.08;
  final double _layer3HSpeed = 0.075;
  final double _layer4HSpeed = 0.07;

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    var screenSize = MediaQuery.of(context).size;
    var layoutHeight = screenSize.height * 3;
    return Scaffold(
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
            bottom: screenSize.height * 0.05 + (_scrolloffset * _sunSpeed),
            right: screenSize.width * 0.3,
            left: 0,
            child: SvgPicture.asset("assets/images/mediamaxicon.svg"),
          ),
          Positioned(
            bottom: _layer4Speed * _scrolloffset,
            right: _layer4HSpeed * _scrolloffset * -1,
            left: _layer4HSpeed * _scrolloffset * -1,
            height: screenSize.height,
            child: SvgPicture.asset(
              "assets/images/mountains-layer-4.svg",
              alignment: Alignment.bottomCenter,
            ),
          ),
          Positioned(
            bottom: _layer3Speed * _scrolloffset,
            right: _layer3HSpeed * _scrolloffset * -1,
            left: _layer3HSpeed * _scrolloffset * -1,
            height: screenSize.height,
            child: SvgPicture.asset(
              "assets/images/mountains-layer-2.svg",
              alignment: Alignment.bottomCenter,
            ),
          ),
          Positioned(
            bottom: _layer2Speed * _scrolloffset,
            right: _layer2HSpeed * _scrolloffset * -1,
            left: _layer2HSpeed * _scrolloffset * -1,
            height: screenSize.height,
            child: SvgPicture.asset(
              "assets/images/trees-layer-2.svg",
              alignment: Alignment.bottomCenter,
            ),
          ),
          Positioned(
            bottom: -20 + _layer1Speed * _scrolloffset,
            right: _layer1HSpeed * _scrolloffset * -1,
            left: _layer1HSpeed * _scrolloffset * -1,
            height: screenSize.height,
            child: SvgPicture.asset(
              "assets/images/layer-1.svg",
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ),
          ),
          Positioned.fill(
            top: screenSize.height + (_layer1Speed * _scrolloffset * -1),
            right: 0,
            left: 0,
            child: Container(
                color: AppColor.black,
                child: SingleChildScrollView(
                  child: Column(children: [
                    TitlHome(titel: 'اعمالنا'),
                    CardMarketing(),
                  ]),
                )),
          ),
          Positioned.fill(
              child: SingleChildScrollView(
            controller: _scrollController,
            child: SizedBox(
              height: layoutHeight,
              child: SvgPicture.asset(
                "assets/images/stars-cuate.svg",
                fit: BoxFit.fitWidth,
              ),
            ),
          ))
        ]),
      ),
    );
  }
}
