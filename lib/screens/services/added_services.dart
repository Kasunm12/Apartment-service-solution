import 'dart:convert';

import 'package:apartment_service_solution/screens/login.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../constants/baseAPI.dart';
import '../../constants/colors.dart';

class RequestedServices extends StatefulWidget {
  const RequestedServices({Key? key}) : super(key: key);

  @override
  _RequestedServicesState createState() => _RequestedServicesState();
}

class _RequestedServicesState extends State<RequestedServices> {
  conform(String Id) async {
    var response;
    try {
      response =
      await Dio().get(Base_API + "/service/confirm/" + Id,);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => super.widget));
    } catch (e) {
      print(e);
    }
  }

  delete(String Id) async {
    var response;
    try {
      response =
      await Dio().delete(Base_API + "/service/" + Id,);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => super.widget));
    } catch (e) {
      print(e);
    }
  }

  getdata() async {
    var response;
    try {
      response =
          await Dio().get(Base_API + "/utilityBill/getUtilityBillsByResidentId",
              options: Options(headers: {
                'Authorization': token, //HEADERS
              }));
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

  List CleaningList = [];
  List CookingList = [];
  List WashingList = [];
  Future cleaning() async {
    try {
      var response =
          await Dio().get(Base_API + "/service/getCleaningServicesByResidentId",
              options: Options(headers: {
                'Authorization': token, //HEADERS
              }));
      Map<String, dynamic> responseJson = json.decode(response.toString());
      print("****************");
      print(responseJson['data']);
      setState(() {
        CleaningList = responseJson['data'];
      });
      print(response);
    } on DioError catch (e) {
      debugPrint("error:${e.toString()}");
    }
  }

  Future cooking() async {
    try {
      var response =
          await Dio().get(Base_API + "/service/getCookingServicesByResidentId",
              options: Options(headers: {
                'Authorization': token, //HEADERS
              }));
      Map<String, dynamic> responseJson = json.decode(response.toString());
      print("****************");
      print(responseJson['data']);
      setState(() {
        CookingList = responseJson['data'];
      });
      print(response);
    } on DioError catch (e) {
      debugPrint("error:${e.toString()}");
    }
  }

  Future washing() async {
    try {
      var response =
          await Dio().get(Base_API + "/service/getWashingServicesByResidentId",
              options: Options(headers: {
                'Authorization': token, //HEADERS
              }));
      Map<String, dynamic> responseJson = json.decode(response.toString());
      print("****************");
      print(responseJson['data']);
      setState(() {
        WashingList = responseJson['data'];
      });
      print(response);
    } on DioError catch (e) {
      debugPrint("error:${e.toString()}");
    }
  }

  loading() async {
    await cleaning();
    await cooking();
    await washing();
  }

  @override
  void initState() {
    // TODO: implement initState
    loading();
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
              SizedBox(
                height: 10,
              ),
              Container(
                height: height / 5,
                child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: CookingList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: width / 3 - 60,
                                child: Text(CookingList[index]['day'])),
                            Container(
                                width: width / 3 - 60,
                                child: Text(CookingList[index]['time_slot'])),
                            Container(
                                child: Row(
                              children: [
                                ElevatedButton(
                                  child: Text(CookingList[index]['status'] == 'Confirmed'? 'Confirmed' :'Confirm'),
                                  onPressed: () {
                                    conform(CookingList[index]['_id']);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: buttonGreen,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 15),
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                CookingList[index]['status'] == 'Confirmed'?
                                Container():
                                ElevatedButton(
                                  child: Text('Cancel'),
                                  onPressed: () {
                                    delete(CookingList[index]['_id']);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: buttonGreen,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 15),
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ))
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
              SizedBox(
                height: 10,
              ),
              Container(
                height: height / 5,
                child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: CleaningList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: width / 3 - 60,
                                child: Text(CleaningList[index]['day'])),
                            Container(
                                width: width / 3 - 60,
                                child: Text(CleaningList[index]['time_slot'])),
                            Container(
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      child: Text(CleaningList[index]['status'] == 'Confirmed'? 'Confirmed' :'Confirm'),
                                      onPressed: () {
                                        conform(CleaningList[index]['_id']);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: buttonGreen,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15),
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    CleaningList[index]['status'] == 'Confirmed'?
                                    Container():
                                    ElevatedButton(
                                      child: Text('Cancel'),
                                      onPressed: () {
                                        delete(CleaningList[index]['_id']);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: buttonGreen,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15),
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ))
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
              SizedBox(
                height: 10,
              ),
              Container(
                height: height / 5,
                child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: WashingList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: width / 3 - 60,
                                child: Text(WashingList[index]['day'])),
                            Container(
                                width: width / 3 - 60,
                                child: Text(WashingList[index]['time_slot'])),
                            Container(
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      child: Text(WashingList[index]['status'] == 'Confirmed'? 'Confirmed' :'Confirm'),
                                      onPressed: () {
                                        conform(WashingList[index]['_id']);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: buttonGreen,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15),
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    WashingList[index]['status'] == 'Confirmed'?
                                    Container():
                                    ElevatedButton(
                                      child: Text('Cancel'),
                                      onPressed: () {
                                        delete(WashingList[index]['_id']);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: buttonGreen,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15),
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ))
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
