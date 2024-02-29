
import 'package:chargily_test/shared/remot/DioHelper.dart';
import 'package:flutter/material.dart';

import 'shared/api/ApiCall.dart';
import 'shared/api/ApiCustomers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chargily Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Api Call
            httpDeleteCustomer(id: "01hqths3y34547e51b8jzpq1ds");
            
          },
          child: const Text('Test Api Call'),
        ),
      ),
    );
  }
}

