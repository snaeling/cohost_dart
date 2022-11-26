import 'package:cohost_api/src/helpers/http_client.dart';

abstract class BaseService {
  final String api = 'api/v1/';

  final HttpClient httpClient;

  const BaseService(this.httpClient);
}
