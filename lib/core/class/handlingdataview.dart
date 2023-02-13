import 'package:flutter/material.dart';
import 'package:mediamaxweb/core/class/statusrequest.dart';
import 'package:lottie/lottie.dart';
import 'package:mediamaxweb/core/constant/imgaeasset.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(child: Lottie.asset(AppImageAsset.loading))
        : statusRequest == StatusRequest.offlinefailure
            ? const Center(child: Text("قم بتشغيل الانترنت "))
            : statusRequest == StatusRequest.serverfailure
                ? const Center(child: Text("خطا في السرفر"))
                : statusRequest == StatusRequest.failure
                    ? const Center(child: Text("لايوجد بيانات"))
                    : widget;
  }
}
