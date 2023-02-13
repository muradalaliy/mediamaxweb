import 'package:get/get.dart';
import 'package:mediamaxweb/core/class/statusrequest.dart';
import 'package:mediamaxweb/core/constant/routes.dart';
import 'package:mediamaxweb/core/function/handingdatacontroller.dart';
import 'package:mediamaxweb/data/datasource/remote/home_data.dart';
import 'package:mediamaxweb/data/model/packagemodel.dart';
import 'package:mediamaxweb/view/screen/packagdetails.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class HomeController extends GetxController {
  getData();
  gotoPackage(PackageModel packageModel);
  gotoWeb(String url);
  llaunchUrl(Uri _url);
  gotomarketing();
}

class HomeControllerImp extends HomeController {
  HomeData homeData = HomeData(Get.find());
  final Uri _url = Uri.parse('http://mooo-cash.mediamaxtv.com/');

  List data = [];
  List package = [];
  List marketing = [];
  List adsvid = [];
  List webwork = [];
  List customers = [];

  late StatusRequest statusRequest;

  @override
  getData() async {
    statusRequest = StatusRequest.loading;

    var response = await homeData.getData();

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        data.addAll(response['data']);
        package.addAll(response['package']);
        adsvid.addAll(response['Adsvid']);
        webwork.addAll(response['webwork']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  @override
  gotoPackage(packageModel) {
    Get.to(const PackagDetails(),
        arguments: {
          "packageModel": packageModel,
        },
        transition: Transition.downToUp);
  }

  @override
  gotomarketing() {
    Get.toNamed(AppRoute.marketingdetails);
  }

  @override
  Future<void> llaunchUrl(_url) async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  gotoWeb(url) {
    // llaunchUrl();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
