import 'package:apartment_service_solution/screens/login.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/baseAPI.dart';
import '../constants/colors.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  String email = '';

  Future Forget() async {
    try {
      var response = await Dio().post(Base_API + '', data: {
        "email": email,
      });
      if (response.data["message"] == "Send in successfully") {
        Get.snackbar(
          "success",
          "Send in successfully",
          backgroundColor: Colors.deepPurple,
          colorText: Colors.white,
          borderWidth: 1,
          borderColor: Colors.grey,
        );
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
              (Route<dynamic> route) => false,
        );
      } else {
        Get.snackbar(
          "error",
          "Please check your email again",
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundGreen,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(height: height/4),
                Text(
                  'Forgot password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 20),
                Icon(
                  Icons.lock,
                  size: 100,
                ),
                SizedBox(height: 20),
                Text(
                  'Please fill your details bellow',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff525457),
                  ),
                ),
                SizedBox(height: 10),
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
                            return "Enter correct format email";
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
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      final formState = formKey.currentState;
                      if (formState!.validate()) {
                        Forget();
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
                          'Submit',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
