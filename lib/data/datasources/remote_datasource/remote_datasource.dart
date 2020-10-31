import 'package:bangla_programming_resources/data/models/message_response.dart';

abstract class RemoteDataSource {
  /// Calls [BASE_URL]
  ///
  /// returns a [MessageResponse] on success
  Future<MessageResponse> getMessage();
}