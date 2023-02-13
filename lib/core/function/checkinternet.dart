import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'dart:io' show Platform;


checkInternet(){
  return true;
}


Future<bool> checkInternets() async {
  try {


    final result = await http.get(Uri.parse('google.com'));
    if(result.statusCode==200){
      return true;
    }
    else{
      return false;
    }
  }
  on SocketException catch (_) {
    return false;
  }
}

checkInternetp() async  {
  try {
    var result = await InternetAddress.lookup("google.com");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
  }on SocketException catch (_) {
    return false;
  }
}


