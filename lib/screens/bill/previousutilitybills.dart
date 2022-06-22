import 'dart:convert';
import 'dart:ui';
import 'package:apartment_service_solution/screens/login.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../constants/baseAPI.dart';
import '../../constants/colors.dart';

class PreviousUtilityBills extends StatefulWidget {
  const PreviousUtilityBills({Key? key}) : super(key: key);

  @override
  State<PreviousUtilityBills> createState() => _PreviousUtilityBillsState();
}

class _PreviousUtilityBillsState extends State<PreviousUtilityBills> {
  String Message = '';
  String Date = '';
  String Type = 'electricity';
  String bill_id = '';
  String bill_amount = '';
  String paid_amount = '';

  Future getPreviousBill() async {
    try {
      var response = await Dio().post(Base_API + "/utilityBill/getPreviousBill",
          data: {"month": Date, "type": Type},
          options: Options(headers: {
            'Authorization': token, //HEADERS
          }));
      Map<String, dynamic> responseJson = json.decode(response.toString());
      print(responseJson['data']);
      if (responseJson['message'] == 'Utility bill is received') {
        setState(() {
          Message = responseJson['message'];
          bill_id = responseJson['data']['bill_id'];
          bill_amount = responseJson['data']['bill_amount'].toString();
          paid_amount = responseJson['data']['paid_amount'].toString();
        });
      } else {
        Get.snackbar(
          "success",
          "Utility bill is not found",
          backgroundColor: Colors.deepPurple,
          colorText: Colors.white,
          borderWidth: 1,
          borderColor: Colors.grey,
        );
      }
      print("*****************************");
      print(bill_id.toString());
    } on DioError catch (e) {
      debugPrint("error:${e.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: const Radius.circular(13.0),
                      bottomRight: const Radius.circular(13.0),
                    ),
                    color: backgroundGreen,
                  ),
                  height: width / 8,
                  width: width - 60,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      Center(
                          child: Text('View Previous Bills',
                              style: TextStyle(
                                  color: iconGreen,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold))),
                    ],
                  )),
              SizedBox(height: 30),
              //text form - month and bill type
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: TextField(
                  maxLength: 7,
                  decoration: InputDecoration(
                    hintText: "2022-06",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 8, 156, 224)),
                    labelText: "Enter Month",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blueAccent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.red)),
                    prefixIcon: Icon(Icons.calendar_month),
                  ),
                  onChanged: (String? text) {
                    Date = text!;
                  },
                ),
              ),
              SizedBox(height: 20),
              //text form - month and bill type
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit_note,
                            color: Colors.grey,
                            size: 40,
                          ),
                          new DropdownButton<String>(
                            hint: Text("Status"),
                            value: Type,
                            items: <String>[
                              'electricity',
                              'water',
                            ].map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                            onChanged: (String? text) {
                              setState(() {
                                Type = text!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  getPreviousBill();
                },
                style: ElevatedButton.styleFrom(
                  primary: buttonGreen,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  textStyle:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Message == 'Utility bill is received'
                    ? Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: backgroundGreen,
                        ),
                        height: 200,
                        width: width - 40,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 30, right: 10, bottom: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: width * 2 / 3 - 70,
                                    child: Text(
                                      "Bill  Amount for the Month ",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Text(
                                    " - Rs. " + bill_amount,
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: width * 2 / 3 - 70,
                                    child: Text(
                                      "Bill ID ",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Text(
                                    bill_id,
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: width * 2 / 3 - 70,
                                    child: Text(
                                      "Paid Amount for the month  ",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Text(
                                    " - Rs. " + paid_amount,
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
