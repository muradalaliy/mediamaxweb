import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:mediamaxweb/core/class/statusrequest.dart';
import 'package:mediamaxweb/core/function/checkinternet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    if (await checkInternet()) {
      Map<String, String> headers = {"Content-type": "application/json","Access-Control-Allow-Origin": "*"};

      var response = await http.get(Uri.parse(linkurl),headers: headers);
      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responsebody = jsonDecode(response.body);
        print(responsebody);

        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }
}
