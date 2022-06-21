import 'package:apartment_service_solution/screens/services/added_services.dart';
import 'package:apartment_service_solution/screens/login.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../constants/baseAPI.dart';
import '../../constants/colors.dart';

class ViewServices extends StatefulWidget {
  final String category;
  const ViewServices({Key? key, required this.category}) : super(key: key);

  @override
  _ViewServicesState createState() => _ViewServicesState();
}

class _ViewServicesState extends State<ViewServices> {
  String Date = 'Monday';
  String Time = '08-12';
  String person = 'Saman';

  Future addServices() async {
    try {
      var response = await Dio().post(Base_API + "/service/create",
          data: {
            "service_category": widget.category,
            "day": Date,
            "time_slot": Time,
            "member": person,
          },
          options: Options(headers: {
            'Authorization': token, //HEADERS
          }));
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RequestedServices()),
      );
      print(response);
    } on DioError catch (e) {
      debugPrint("error:${e.toString()}");
    }
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
                  Text("Service  Profiles - "+ widget.category,
                      style: TextStyle(fontSize: 24, color: iconGreen)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text("Check the date & time , Pick your service",
                      style: TextStyle(fontSize: 18, color: iconGreen)),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text("Select Date",
                      style: TextStyle(fontSize: 18, color: iconGreen)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 50,
                  width: width / 2,
                  color: backgroundGreen,
                  child:
                  new DropdownButton<String>(
                    hint: Text("Status"),
                    value: Date,
                    items: <String>[
                      'Monday',
                      'Tuesday',
                      'Wdnesday',
                      'Thursday',
                      'Friday',
                      'Saturday',
                      'Sunday'
                    ].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (String? text) {
                      setState(() {
                        Date = text!;
                      });
                    },
                  )
                  /*DropdownButton<String>(
                    items: <String>[
                      'Monday',
                      'Tuesday',
                      'Wdnesday',
                      'Thursday',
                      'Friday',
                      'Saturday',
                      'Sunday'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? text) {
                      Date = text!;
                    },
                  )*/),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Text("Select Time",
                      style: TextStyle(fontSize: 18, color: iconGreen)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 50,
                  width: width / 2,
                  color: backgroundGreen,
                  child:
                  new DropdownButton<String>(
                    hint: Text("Status"),
                    value: Time,
                    items: <String>[
                      '08-12',
                      '2-5',
                    ].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (String? text) {
                      setState(() {
                        Time = text!;
                      });
                    },
                  )
                  /*DropdownButton<String>(
                    items: <String>[
                      '08-12',
                      '2-5',
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? text) {
                      Time = text!;
                    },
                  )),*/
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Text("Select Person",
                      style: TextStyle(fontSize: 18, color: iconGreen)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 50,
                  width: width / 2,
                  color: backgroundGreen,
                  child: new DropdownButton<String>(
                    hint: Text("Status"),
                    value: person,
                    items: <String>[
                      'Saman',
                      'Nimal',
                      'Sunil',
                    ].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (String? text) {
                      setState(() {
                        person = text!;
                      });
                    },
                  )
                  /*DropdownButton<String>(
                    items: <String>[
                      'Saman',
                      'Nimal',
                      'Sunil',
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? text) {
                      person = text!;
                    },
                  )*/
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                child: Text(
                  'SUBMIT',
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: () {
                  addServices();
                },
                style: ElevatedButton.styleFrom(
                  primary: blue,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
