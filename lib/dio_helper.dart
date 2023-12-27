//https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=935fd7ff5d5d47b9b01be1f7c0b9ba00

import 'package:dio/dio.dart';

import 'const.dart';

class DioHelper {
  static late Dio dio;
  static init() {
    dio = Dio(
        BaseOptions(
      baseUrl: baseUrl,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
      receiveDataWhenStatusError: true,
    ));
  }
static  getData({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    String? token,
  }) async {
    try {
      dio.options.headers ={
        'Authorization':'Bearer ${token ?? ''}'
      };
   final  Response response =
          await dio.get(url, queryParameters: queryParameters, data: data);
      print(response.data);
      print(response.statusCode);
      return response;
    } catch (error) {
      print(error);
    }
  }

  postData({
    required String url,
    Map<String, dynamic>? queryParameters,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    try {
      dio.options.headers ={
        'Authorization':'Bearer ${token ?? ''}'
      };
      final  Response response =
      await dio.post(url, queryParameters: queryParameters, data: data);
      print(response.data);
      print(response.statusCode);
      return response;
    } catch (error) {
      print(error);
    }
  }


  deleteData({
    required String url,
      Map<String, dynamic>? queryParameters,
     Map<String, dynamic>? data,
    String? token,
  }) async {
    try {
      dio.options.headers ={
        'Authorization':'Bearer ${token ?? ''}'
      };
      final  Response response =
      await dio.delete(url, queryParameters: queryParameters, data: data);
      print(response.data);
      print(response.statusCode);
      return response;
    } catch (error) {
      print(error);
    }
  }

 putData({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    String? token,
  }) async {
    try {
      dio.options.headers ={
        'Authorization':'Bearer ${token ?? ''}'
      };
      final  Response response =
      await dio.put(url, queryParameters: queryParameters, data: data);
      print(response.data);
      print(response.statusCode);
      return response;
    } catch (error) {
              print(error);
    }
  }
}
