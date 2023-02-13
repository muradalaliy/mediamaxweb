import 'package:mediamaxweb/core/class/crud.dart';
import 'package:mediamaxweb/linkapi.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.getWork, {});
    return response.fold((l) => l, (r) => r);
  }
}
