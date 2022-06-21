// import 'dart:ffi';
// import 'dart:html';

import 'package:apartment_service_solution/constants/colors.dart';
import 'package:apartment_service_solution/screens/addedservices.dart';
import 'package:flutter/material.dart';

class ServiceDropDown extends StatefulWidget {
  //const ServiceDropDown({ Key? key }) : super(key: key);

  @override
  State<ServiceDropDown> createState() => _ServiceDropDownState();
}

class _ServiceDropDownState extends State<ServiceDropDown> {

   
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.1,
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
                            child: Text('Sevice Profile - Cooking',
                                style: TextStyle(
                                    color: iconGreen,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold))),
                      ],
                    )),
                SizedBox(
                  height: height / 18,
                ),
                Row(
                  children: [
                    Text("Select Days",
                        style: TextStyle(fontSize: 18, color: iconGreen)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 50,
                    color: backgroundGreen,
                    
                    
                    child: DropdownButton<String>(
                      items: <String>[
                        'Monday',
                        'Tuesday',
                        'Wenasday',
                        'Thuesday',
                        'Friday',
                        'Starday',
                            'Sunday'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                    ),

//=========================================================================
                SizedBox(
                  height: height / 18,
                ),
                Row(
                  children: [
                    Text("Select Time Slot",
                        style: TextStyle(fontSize: 18, color: iconGreen)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  color: backgroundGreen,


                  child: DropdownButton<String>(
                    items: <String>[
                      '8:00 A.M - 12:00 P.M',
                      '14:00 P.M- 17:00 P.M'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),

 //=========================================================================
                SizedBox(
                  height: height / 18,
                ),
                Row(
                  children: [
                    Text("Select Users ",
                        style: TextStyle(fontSize: 18, color: iconGreen)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  color: backgroundGreen,


                  child: DropdownButton<String>(
                    items: <String>[
                      'Nipuni',
                      'Passanni',
                      'Nilma',
                      'Pethum',
                      'Kalana',
                      'Kusal',
                      'Shanaka'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),

                SizedBox(height: 60),
                // signin button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddedServices()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: buttonGreen,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'SUBMIT',
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
      
    );
  }
}
