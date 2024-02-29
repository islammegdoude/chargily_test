import 'package:chargily_test/shared/remot/DioHelper.dart';
import 'package:chargily_test/shared/remot/HttpHelper.dart';


void httpGetBalance(){
  HttpHelper.getData(endpoint: '/balance').then((value) {
    print(value.body);
  });
}
