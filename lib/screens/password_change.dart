import 'package:apartment_service_solution/screens/login.dart';
import 'package:apartment_service_solution/screens/profile/my_information.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/baseAPI.dart';
import '../constants/colors.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({Key? key}) : super(key: key);

  @override
  _PasswordChangeState createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  String _password = '';
  String _passwordOld = '';
  String _Conpassword = '';

  Future editPasword()  async{
    try {
      var response = await Dio().put(Base_API + "/resident/"+id,
          data: {
            "name" : name,
            "resident_id" : Resident_id,
            "email" : email,
            "block_number" : Block_number,
            "house_number" : House_number,
            "phone_number" : Phone_number,
            "nic" : NIC,
            "gender" : Gender,
            "dob" : DOB,
            "occupation" : Occupation,
            "password" : _password,
          },
          options: Options(headers: {
            'Authorization': token, //HEADERS
          }));
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
            const MyInformation()),
      );
      print(response);
    } on DioError catch (e) {
      debugPrint("error:${e.toString()}");
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
          child: Column(
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: width / 4 + 10,
                        width: width / 4 + 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                      Positioned(
                        left: 5,
                        top: 5,
                        child: Container(
                          height: width / 4,
                          width: width / 4,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://media.marketrealist.com/brand-img/Ik1D_rqGf/0x0/newprofile-pic-1-1652281674003.jpg",
                                      scale: 2.0),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Sadali Fernando",
                style: TextStyle(fontSize: 26, color: iconGreen),
              ),
              SizedBox(
                height: height / 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 30, bottom: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ImageIcon(
                      AssetImage("assets/icons/lock.png"),
                      color: iconGreen,
                      size: 50,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: width/2 - 30,
                          child: Text(
                            "Old Password",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: width/2 - 30,
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (input) {
                                  if (input!.isEmpty) {
                                    return 'Please type old password';
                                  }else if(input.length < 8){
                                    return 'Must be more than 8 charater';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                                  labelText: "Verify password",
                                  fillColor: Colors.white,
                                ),
                                onChanged: (String? text) {
                                  _passwordOld = text!;
                                },
                              ),
                              Divider(color: Colors.black),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: width/2 - 30,
                          child: Text(
                            "New Password",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: width/2 - 30,
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (input) {
                                  if (input!.isEmpty) {
                                    return 'Please type new password';
                                  }else if(input.length < 8){
                                    return 'Must be more than 8 charater';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                                  labelText: " Set new password",
                                  fillColor: Colors.white,
                                ),
                                onChanged: (String? text) {
                                  _password = text!;
                                },
                              ),
                              Divider(color: Colors.black),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: width/2 - 30,
                          child: Text(
                            "Confirm Password",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: width/2 - 30,
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (input) {
                                  if (input! != _password) {
                                    return 'Please type same password';
                                  }else if(input.length < 8){
                                    return 'Must be more than 8 charater';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                                  labelText: "Confirm password",
                                  fillColor: Colors.white,
                                ),
                                onChanged: (String? text) {
                                  _Conpassword = text!;
                                },
                              ),
                              Divider(color: Colors.black),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 100,),
                    ElevatedButton(
                      child: Text('UPDATE'),
                      onPressed: () {
                        final formState = formKey.currentState;
                        if (formState!.validate()) {
                          if(_passwordOld != password){
                            Get.snackbar(
                              "error",
                              "Please check old password again",
                              backgroundColor: Colors.red,
                              colorText: Colors.white,
                              borderWidth: 1,
                              borderColor: Colors.grey,
                            );
                          }else{
                            editPasword();
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: buttonGreen,
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                        textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
