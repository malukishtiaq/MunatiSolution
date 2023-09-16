import 'package:Munati/network/network/endpoints.dart';
import 'package:Munati/network/network/interceptors/authorization_interceptor.dart';
import 'package:Munati/network/network/interceptors/logger_interceptor.dart';
import 'package:dio/dio.dart';

class BaseApi {
  String accessToken = "";
  late final Dio dioClient;
  BaseApi()
      : dioClient = Dio(
          BaseOptions(
              baseUrl: Endpoints.baseURL,
              connectTimeout: Duration(seconds: Endpoints.connectionTimeout),
              receiveTimeout: Duration(seconds: Endpoints.receiveTimeout),
              responseType: ResponseType.json,
              contentType: Headers.formUrlEncodedContentType),
        )..interceptors.addAll(
            [
              AuthorizationInterceptor(),
              LoggerInterceptor(),
            ],
          );
}
