import 'package:flutter/material.dart';
import 'package:mediamaxweb/core/constant/color.dart';

class TitlHome extends StatelessWidget {
  final String titel;
  const TitlHome({super.key, required this.titel});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.height * 0.25,
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    margin: const EdgeInsets.only(right: 5, top: 10),
                    height: 5,
                    color: AppColor.m4,
                  ),
                  Container(
                    width: 50,
                    margin: const EdgeInsets.only(right: 5, top: 10),
                    height: 5,
                    color: AppColor.m3,
                  ),
                  Container(
                    width: 50,
                    height: 5,
                    margin: const EdgeInsets.only(right: 5, top: 10),
                    color: AppColor.m2,
                  ),
                  Container(
                    width: 50,
                    margin: const EdgeInsets.only(top: 10),
                    height: 5,
                    color: AppColor.m1,
                  ),
                ],
              )),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(right: 10),
              alignment: Alignment.centerRight,
              child: Text(
                titel,
                style: const TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 22,
                    color: AppColor.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
