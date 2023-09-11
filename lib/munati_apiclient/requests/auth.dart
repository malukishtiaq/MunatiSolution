import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import '../models/auth_model.dart';
import '../network/endpoints.dart';
import '../network/interceptors/authorization_interceptor.dart';
import '../network/interceptors/logger_interceptor.dart';

class AuthApi {
  late final Dio _dio;

  AuthApi()
      : _dio = Dio(
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

  Future<AuthResponse?> authAsync({required AuthRequest auth}) async {
    try {
      final response = await _dio.post(Endpoints.auth, data: auth.toJson());
      return AuthResponse.fromJson(response.data);
    } on DioException catch (err) {
      var errorMessage = DioException.connectionError(
          requestOptions: err.requestOptions, reason: err.message ?? "");
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future<AuthResponse?> createAccountAsync({required AuthRequest auth}) async {
    try {
      final response =
          await _dio.post(Endpoints.createAccount, data: auth.toJson());
      return AuthResponse.fromJson(response.data);
    } on DioException catch (err) {
      var errorMessage = DioException.connectionError(
          requestOptions: err.requestOptions, reason: err.message ?? "");
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }
}
