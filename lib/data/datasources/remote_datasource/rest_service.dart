import 'package:bangla_programming_resources/core/network/api_base_helper.dart';
import 'package:bangla_programming_resources/utils/constants.dart';
import 'package:flutter/cupertino.dart';

class RestService {
  final ApiBaseHelper helper;

  RestService({@required this.helper});

  //calls base url
  Future<dynamic> getMessage() {

    final header = {
      NetworkConstants.ACCEPT : "application/json"
    };

    return helper.get("", header);
  }

}