import 'package:get/get.dart';
import 'package:mediamaxweb/core/constant/routes.dart';
import 'package:mediamaxweb/view/screen/homescreen.dart';
import 'package:mediamaxweb/view/screen/marketingdetails.dart';
import 'package:mediamaxweb/view/screen/onboarding.dart';
import 'package:mediamaxweb/view/screen/packagdetails.dart';
import 'package:mediamaxweb/view/screen/splshscreen.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name: "/", page: () => ProductDetails()),
//  Auth
  GetPage(name: AppRoute.packagdetails, page: () => const PackagDetails()),
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.splshscreen, page: () => const SplshScreen()),
  GetPage(name: AppRoute.onbording, page: () => const OnBoarding()),
  GetPage(
      name: AppRoute.marketingdetails, page: () => const MarketingDetails()),
];
