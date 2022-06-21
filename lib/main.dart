import 'package:apartment_service_solution/screens/addedservices.dart';
import 'package:apartment_service_solution/screens/login.dart';
import 'package:apartment_service_solution/screens/previousutilitybills.dart';
import 'package:apartment_service_solution/screens/splashscreen.dart';
import 'package:apartment_service_solution/screens/servicesdropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apartment Service solutions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}