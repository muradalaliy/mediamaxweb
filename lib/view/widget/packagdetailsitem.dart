import 'package:flutter/material.dart';
import 'package:mediamaxweb/core/constant/color.dart';

class PackagDetailsItem extends StatelessWidget {
  final String? text1;
  final String text2;
  const PackagDetailsItem(
      {super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$text1",
            style: const TextStyle(
                fontFamily: 'Cairo',
                fontSize: 20,
                color: AppColor.white,
                fontWeight: FontWeight.w800),
          ),
          const SizedBox(width: 20),
          Text(
            " $text2",
            style: const TextStyle(
                fontFamily: 'Cairo',
                fontSize: 20,
                color: AppColor.white,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
