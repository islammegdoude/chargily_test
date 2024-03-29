
import 'package:http/http.dart' as http;

import '../EndPoints/EndPoints.dart';

class HttpHelper {


  static Future<http.Response> getData({
    required String endpoint,
  }) async {
    final Uri uri = Uri.parse(BASE_URL + endpoint);
    final response = await http.get(
      uri,
      headers: <String, String>{
        'Authorization': TokenSec,
      },
    );
    return response;
  }

  static Future<http.Response> postData({
    required String endpoint,
    Map<String, dynamic>? data,
  }) async {
    final Uri uri = Uri.parse(BASE_URL + endpoint);
    final response = await http.post(
      uri,
      headers: <String, String>{
        'Authorization': TokenSec,
      },
      body: data,
    );
    return response;
  }

  static Future<http.Response> putData({
    required String endpoint,
    required Map<String, dynamic> data,
  }) async {
    final Uri uri = Uri.parse(BASE_URL + endpoint);
    final response = await http.put(
      uri,
      headers: <String, String>{
        'Authorization': TokenSec,
      },
      body: data,
    );
    return response;
  }

  static Future<http.Response> deleteData({
    required String endpoint,
  }) async {
    final Uri uri = Uri.parse(BASE_URL + endpoint);
    final response = await http.delete(
      uri,
      headers: <String, String>{
        'Authorization': TokenSec,
      },
    );
    return response;
  }
}