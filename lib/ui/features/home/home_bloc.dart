import 'dart:async';

import 'package:bangla_programming_resources/data/models/message_response.dart';
import 'package:bangla_programming_resources/data/repositories/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final Repository repository;

  HomeBloc({@required this.repository}) : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if(event is GetMessageEvent){
      try{
        yield HomeLoadingState();
        final response = await repository.getMessage();
        /*print(response.toJson());*/
        yield HomeLoadedState(response: response);
      }on Exception {
        yield HomeFailureState();
        print("Exception");
      }
    }
  }
}
