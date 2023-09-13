import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import '../models/current_user.dart';
import '../models/product_model.dart';
import '../network/endpoints.dart';
import 'base_api.dart';

class MarketApi extends BaseApi {
  String access_token = "";
  MarketApi() {
    access_token = Current.User.access_token ?? "";
  }
  //Future<(int, dynamic)>
  getProductsAsync({required ProductRequest productRequest}) async {
    try {
      var response = await dioClient.post(Endpoints.getProducts + access_token,
          data: productRequest.toJson());
      return productResponseFromJson(response.data);
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
