import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/view/widget/cardhorizontal.dart';
import 'package:mediamaxweb/view/widget/cardwork.dart';

class ClientsCard extends StatelessWidget {
  ClientsCard({super.key});

  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.black,
        body: CarouselSlider(
          options: CarouselOptions(
            height: 500.0,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 1.0,
            initialPage: 1,
          ),
          items: [1].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return CardHorizontal(
                  arrysum: 2,
                  imgurl: "5",
                );
              },
            );
          }).toList(),
        ));
  }
}
