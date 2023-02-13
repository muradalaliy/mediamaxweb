import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediamaxweb/view/screen/fragmentfour.dart';
import 'package:mediamaxweb/view/screen/fragmenthere.dart';
import 'package:mediamaxweb/view/screen/fragmenthome.dart';
import 'package:mediamaxweb/view/screen/fragmenttwo.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int i);
}

class HomeScreenControllerImp extends HomeScreenController {
  int curentPage = 0;

  List<Widget> listPage = [
    const FragmentHome(),
    const FragmentTwo(),
    const FragmenThere(),
    const FragmentFour(),
  ];

  @override
  changePage(int i) {
    curentPage = i;
    update();
  }
}
