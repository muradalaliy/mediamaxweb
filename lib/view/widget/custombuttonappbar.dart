import 'package:flutter/material.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/view/widget/colorlinemedia.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String textbutton;
  final IconData icondata;
  final bool? active;
  const CustomButtonAppBar({
    super.key,
    this.onPressed,
    required this.textbutton,
    required this.icondata,
    this.active,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.all(2),
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icondata,
            color: active == true ? AppColor.m1 : AppColor.white,
            size: 24,
          ),
          Text(
            textbutton,
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 12,
                color: active == true ? AppColor.m1 : AppColor.white,
                fontWeight: FontWeight.w300),
          ),
          if (active == true) const ColorLine(),
        ],
      ),
    );
  }
}
