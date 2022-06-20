import 'dart:convert';

import 'package:apartment_service_solution/screens/login.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../constants/baseAPI.dart';
import '../constants/colors.dart';

class RequestedServices extends StatefulWidget {
  const RequestedServices({Key? key}) : super(key: key);

  @override
  _RequestedServicesState createState() => _RequestedServicesState();
}

class _RequestedServicesState extends State<RequestedServices> {
  getdata() async {
    var response;
    try {
      response = await Dio().get(Base_API + "/utilityBill/getUtilityBillsByResidentId",
          options: Options(headers: {
            'Authorization': token, //HEADERS
          })
      );
      Map<String, dynamic> responseJson = json.decode(response.toString());
      print(responseJson['data']);
      setState(() {
        responseJson['data']['last_electricity_bill'];
        //Complaints = responseJson['data'];
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getdata();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Text(
                    "Requested Services",
                    style: TextStyle(fontSize: 24, color: iconGreen),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Text(
                    "Cooking",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: height / 5,
                child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(width: width/3 - 60, child: Text('Monday')),
                            Container(width: width/3 - 60, child: Text('8-12')),
                            Container(
                              child: Row(
                                children: [
                                  ElevatedButton(
                                    child: Text('UPDATE'),
                                    onPressed: () {
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: buttonGreen,
                                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                      textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  ElevatedButton(
                                    child: Text('UPDATE'),
                                    onPressed: () {
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: buttonGreen,
                                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                      textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Text(
                    "Cleaning",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: height / 5,
                child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(width: width/3 - 60, child: Text('Monday')),
                            Container(width: width/3 - 60, child: Text('8-12')),
                            Container(
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      child: Text('UPDATE'),
                                      onPressed: () {
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: buttonGreen,
                                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                        textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    ElevatedButton(
                                      child: Text('UPDATE'),
                                      onPressed: () {
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: buttonGreen,
                                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                        textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Text(
                    "Washing",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: height / 5,
                child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(width: width/3 - 60, child: Text('Monday')),
                            Container(width: width/3 - 60, child: Text('8-12')),
                            Container(
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      child: Text('UPDATE'),
                                      onPressed: () {
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: buttonGreen,
                                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                        textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    ElevatedButton(
                                      child: Text('UPDATE'),
                                      onPressed: () {
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: buttonGreen,
                                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                        textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
