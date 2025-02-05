import 'package:dio/dio.dart';
import 'api_client.dart';

class DioClient {
  final Dio dio;

  DioClient(this.dio);

  ApiClient get client => ApiClient(dio: dio);
}
