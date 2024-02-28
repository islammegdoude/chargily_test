
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
        'Content-Type': 'application/json',
        'Authorization': TokenSec,
      },
    );
    return response;
  }

  static Future<http.Response> postData({
    required String endpoint,
    required Map<String, dynamic> data,
  }) async {
    final Uri uri = Uri.parse(BASE_URL + endpoint);
    final response = await http.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': TokenSec,
      },
      body: data,
    );
    return response;
  }
}