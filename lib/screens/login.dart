import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/baseAPI.dart';
import '../constants/colors.dart';
import '../widgets/bottomnavbar.dart';

String token = '';
String id = '';
String name = '';
String email = '';
String password = '';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future LoginData() async {
    try {
      var response = await Dio().post(Base_API + '/resident/login', data: {
        "email": email,
        "password": password
      });
      token = response.data['tokenObject']['token'];
      id = response.data["tokenObject"]["sub"]["id"];
      name = response.data["tokenObject"]["sub"]["name"];
      email = response.data["tokenObject"]["sub"]["email"];
      if (response.data["success"] == true) {
        Get.snackbar(
          "success",
          "logged in successfully",
          backgroundColor: Colors.deepPurple,
          colorText: Colors.white,
          borderWidth: 1,
          borderColor: Colors.grey,
        );
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => BottomNavBar(),
          ),
          (route) => false,
        );
      } else {
        Get.snackbar(
          "error",
          "Please check your username or password again",
          backgroundColor: Colors.deepPurple,
          colorText: Colors.white,
          borderWidth: 1,
          borderColor: Colors.grey,
        );
      }
      print("res: $response");
      print(id);
      print(name);
      print(token);
    } catch (e) {
      Get.snackbar("Error", "Please check your username or password again",
          backgroundColor: Colors.deepPurple,
          borderWidth: 1,
          borderColor: Colors.grey,
          colorText: Colors.white,
          icon: Icon(
            Icons.error_outline_outlined,
            color: Colors.red,
            size: 30,
          ));
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Main Text Field ex;- EduLIFE
                SizedBox(height: 60),
                Icon(
                  Icons.person,
                  size: 100,
                ),
                SizedBox(height: 20),
                Text(
                  'Apartment Service',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome to Apartment Service',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 80),
                //  email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Email',
                        ),
                        onChanged: (String? text) {
                          email = text!;
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // password text field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Password',
                        ),
                        onChanged: (String? text) {
                          password = text!;
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                // signin button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      LoginData();
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: buttonGreen,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // not a members ? Register now section field
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot password ? ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff525457),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
