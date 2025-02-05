import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio;

  ApiClient({required this.dio}) {
    dio.options = BaseOptions(
      baseUrl: 'https://yourapi.com/api',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }

  Future<Response> get(String path, {Map<String, dynamic>? queryParams}) async {
    return await dio.get(path, queryParameters: queryParams);
  }

  Future<Response> post(String path, {dynamic data}) async {
    return await dio.post(path, data: data);
  }
}
