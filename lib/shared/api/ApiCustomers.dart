import 'dart:convert';

import 'package:chargily_test/shared/remot/DioHelper.dart';
import 'package:chargily_test/shared/remot/HttpHelper.dart';

// Creates a new customer.
void httpCreateCustomer({Map<String,dynamic>? data}){
  
  HttpHelper.postData(endpoint: '/customers',data: data).then((value) {
    print(value.body);
  });
}

// Update Customer 
void httpUpdateCustomer({ required String id, required Map<String,dynamic> data}){
  HttpHelper.postData(
    endpoint: '/customers/$id',
    data: data,
    ).then((value) {
    print(value.body);
});
}

// Retrieve Customer
void httpRetrieveCustomer(String id,){
  HttpHelper.getData(endpoint: '/customers/$id').then((value) {
    print(value.body);
  });
}

// List all Customers
void httpListAllCustomer(String id, {int? pageNmbr}){
  if (pageNmbr == 0 || pageNmbr == null) {
    HttpHelper.getData(endpoint: '/customers').then((value) {
    print(value.body);
  });
  }else{
    HttpHelper.getData(endpoint: '/customers?per_page=$pageNmbr').then((value) {
      print(value.body);
    });
  }
}

// Delete Customer 

void httpDeleteCustomer(String id,){
  HttpHelper.deleteData(endpoint: '/customers/$id').then((value) {
    print(value.body);
  });
}




