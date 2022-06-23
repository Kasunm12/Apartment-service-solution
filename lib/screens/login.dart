import 'package:apartment_service_solution/screens/forget_password_screen.dart';
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
        "password": password,
      });
      setState(() {
        token = response.data['tokenObject']['token'];
        id = response.data["tokenObject"]["sub"]["id"];
        name = response.data["tokenObject"]["sub"]["name"];
        email = response.data["tokenObject"]["sub"]["email"];
      });
      if (response.data["message"] == "Logged in successfully") {
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
          "Please check your email or password again",
          backgroundColor: Colors.red,
          colorText: Colors.white,
          borderWidth: 1,
          borderColor: Colors.grey,
        );
      }
      print("res: $response");
    } catch (e) {
      Get.snackbar("Error", "Please contact admin!",
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

  GlobalKey<FormState> formKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGreen,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
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
                        child: TextFormField(
                          validator: (input) {
                            if (input!.isEmpty) {
                              return 'Please type email';
                            }else if(false==RegExp(
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                .hasMatch(input)){
                              return "Check your email";
                            }
                            return null;
                          },
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
                        child: TextFormField(
                          validator: (input) {
                            if (input!.isEmpty) {
                              return 'Please type password';
                            }else if(input.length < 8){
                              return 'Must be more than 8 charater';
                            }
                            return null;
                          },
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
                        final formState = formKey.currentState;
                        if (formState!.validate()) {
                           LoginData();
                        }
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
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ForgetPassword()),
                          );
                        },
                        child: Text(
                          'Forgot password ? ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff525457),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
