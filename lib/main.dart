import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mediamaxweb/binding/initialbinding.dart';
import 'package:mediamaxweb/core/constant/color.dart';
import 'package:mediamaxweb/routes.dart';
import 'package:mediamaxweb/view/widget/home/testview.dart';
import 'package:mediamaxweb/view/widget/home/testviewsss.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // home: const HomeScreen(),
      home: TestVieww(),
      initialBinding: InitialBindings(),
      debugShowCheckedModeBanner: false,
      color: AppColor.black,
      getPages: routes,
    );
  }
}
