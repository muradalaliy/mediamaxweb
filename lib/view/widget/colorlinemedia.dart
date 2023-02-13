import 'package:flutter/material.dart';
import 'package:mediamaxweb/core/constant/color.dart';

class ColorLine extends StatelessWidget {
  const ColorLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.height * 0.25,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 0,
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 3,
                    color: AppColor.m4,
                  ),
                  Container(
                    width: 10,
                    height: 3,
                    color: AppColor.m3,
                  ),
                  Container(
                    width: 10,
                    height: 3,
                    color: AppColor.m2,
                  ),
                  Container(
                    width: 10,
                    height: 3,
                    color: AppColor.m1,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
