import 'package:chargily_test/shared/remot/HttpHelper.dart';

// Create a product .
void httpCreateProduct({required Map<String,dynamic> data}){
  
  HttpHelper.postData(endpoint: '/products',data: data).then((value) {
    print(value.body);
  });
}