import 'package:bangla_programming_resources/data/datasources/remote_datasource/remote_datasource.dart';
import 'package:bangla_programming_resources/data/datasources/remote_datasource/rest_service.dart';
import 'package:bangla_programming_resources/data/models/message_response.dart';
import 'package:flutter/cupertino.dart';

class RemoteDataSourceImpl extends RemoteDataSource{

  final RestService service;

  RemoteDataSourceImpl({@required this.service});

  @override
  Future<MessageResponse> getMessage() {
    return service.getMessage().then((value){
      return MessageResponse.fromJson(value);
    });
  }

}