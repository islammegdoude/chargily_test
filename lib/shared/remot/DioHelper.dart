import 'package:dio/dio.dart';

import '../EndPoints/EndPoints.dart';


class DioHelper {
  static Dio dio = Dio();

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL,
        receiveDataWhenStatusError: true,
      ),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers.addAll({
            'Content-Type': 'application/json',
            'Authorization': TokenSec,
          });
          return handler.next(options);
        },
      ),
    );
  }

  static Future<Response> getData({
    required String endpoint,
  }) async {
    try {
      final response = await dio.get(endpoint);
      return response;
    } catch (e) {
      print('Error: $e');
      return Response(requestOptions: RequestOptions(path: ''));
    }
  }

  static Future<Response> postData({
    required String endpoint,
    required Map<String, dynamic> data,
  }) async {
    try {
      final response = await dio.post(endpoint, data: data);
      return response;
    } catch (e) {
      print('Error: $e');
      return Response(requestOptions: RequestOptions(path: ''));
    }
  }
}




// class DioHelper {
//   static Dio? dio;
//   static init() {
//     dio = Dio(
//       BaseOptions(
//         baseUrl: BASE_URL,
//         receiveDataWhenStatusError: true,
//       )
//     );
//   }

//   static Future<Response?> getData({
//     required String url,
//   }) async {
//     dio?.options.headers = {
//       'Content-Type': 'application/json',
//       'Authorization': TokenSec,
//     };
//     return await dio?.get(url);
//   }

//   static Future<Response> postData({
//     required String url,
//     required Map<String, dynamic>? data,
//   }) async {
//     dio?.options.headers = {
//       'Content-Type': 'application/json',
//       'token': TokenSec,
//     };
//     return dio!.post(url, data: data);
//   }
// }