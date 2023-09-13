import 'package:Munati/munati_apiclient/network/endpoints.dart';
import 'package:Munati/munati_apiclient/network/interceptors/authorization_interceptor.dart';
import 'package:Munati/munati_apiclient/network/interceptors/logger_interceptor.dart';
import 'package:dio/dio.dart';

class BaseApi {
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
