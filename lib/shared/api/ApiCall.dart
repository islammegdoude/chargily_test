import 'package:chargily_test/shared/remot/DioHelper.dart';
import 'package:chargily_test/shared/remot/HttpHelper.dart';

// get balance function 
void httpGetBalance(){
  HttpHelper.getData(endpoint: '/balance').then((value) {
    print(value.body);
  });
}


// void dioGetBalance(){
//   DioHelper.getData(endpoint: '/balance').then((value) {
//     print(value.data);
//   });
// }
// // Path: lib/shared/api/ApiCall.dart