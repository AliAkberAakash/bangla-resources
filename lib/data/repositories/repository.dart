import 'package:bangla_programming_resources/data/models/message_response.dart';

abstract class Repository {
  Future<MessageResponse> getMessage();
}