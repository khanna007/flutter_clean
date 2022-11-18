import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class ApiClient {
   Dio? _dio;

  final baseUrl = "https://api.zippopotam.us";

   ApiClient() {
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
    initializationInterceptors();
  }

  Future<Response?> getRequest(String endPoint)async{
     Response ?response;
    try{
    response = await _dio?.get(endPoint);
    }on DioError catch (e){
    }
    return response;
  }

  initializationInterceptors() {
    _dio?.interceptors.add(InterceptorsWrapper(onError: (DioError e, handler) {
    }, onRequest: (options, handler) {
      return handler.next(options);
    }, onResponse: (response, handler) {
      return handler.next(response);
    }));
  }
}
