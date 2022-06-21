import 'package:apartment_service_solution/screens/added_services.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ViewServices extends StatefulWidget {
  const ViewServices({Key? key}) : super(key: key);

  @override
  _ViewServicesState createState() => _ViewServicesState();
}

class _ViewServicesState extends State<ViewServices> {
  String person = '';
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
                  Text("Service  Profiles - Cooking",
                      style: TextStyle(fontSize: 24, color: iconGreen)),
                ],
              ),
              SizedBox(height: 30,),
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
                  width: width/2,
                  color: backgroundGreen,
                  child: DropdownButton<String>(
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
                    onChanged: (_) {},
                  )),
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
                  width: width/2,
                  color: backgroundGreen,
                  child: DropdownButton<String>(
                    items: <String>[
                      '08-12',
                      '2-5',
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )),
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
                  width: width/2,
                  color: backgroundGreen,
                  child: DropdownButton<String>(
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
                      print(person);
                    },
                  )),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                child: Text('SUBMIT',style: TextStyle(fontSize: 22),),
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RequestedServices()),
                      );
                },
                style: ElevatedButton.styleFrom(
                  primary: blue,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
