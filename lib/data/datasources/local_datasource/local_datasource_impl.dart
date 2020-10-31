import 'dart:async';

import 'package:bangla_programming_resources/data/models/message_response.dart';
import 'package:bangla_programming_resources/utils/constants.dart';
import 'package:bangla_programming_resources/utils/shared_pref_utils.dart';

import 'local_datasource.dart';

class LocalDataSourceImpl implements LocalDataSource {
  @override
  Future<MessageResponse> getMessageResponse() async{

    String message = await SharedPrefUtil.getString(MyConstants.MESSAGE_KEY);
    if(message.isEmpty) message = "Hello world!"; //for the first time
    return MessageResponse(success: true, message: message);
  }

  @override
  void setMessageResponse(MessageResponse response) async{
    await SharedPrefUtil.writeString(MyConstants.MESSAGE_KEY, response.message);
  }

}