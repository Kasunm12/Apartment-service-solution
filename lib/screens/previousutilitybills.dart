import 'dart:ui';
import 'package:flutter/material.dart';
import '../constants/colors.dart';

class PreviousUtilityBills extends StatefulWidget {
  const PreviousUtilityBills({Key? key}) : super(key: key);

  @override
  State<PreviousUtilityBills> createState() => _PreviousUtilityBillsState();
}

class _PreviousUtilityBillsState extends State<PreviousUtilityBills> {
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
                  maxLength: 12,
                  decoration: InputDecoration(
                    hintText: "Month",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 8, 156, 224)),
                    labelText: "Enter Month",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blueAccent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.red)),
                    // icon:Icon(
                    //   Icons.calendar_month,
                    //   color:Colors.green,
                    //   size: 20,
                    // )
                    prefixIcon: Icon(Icons.calendar_month),
                  ),
                ),
              ),
              SizedBox(height: 20),
              //text form - month and bill type
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: TextField(
                  // maxLength:12,
                  decoration: InputDecoration(
                    hintText: "Bill Type",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 8, 156, 224)),
                    labelText: "Enter Bill Type",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blueAccent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.red)),
                    // icon:Icon(
                    //   Icons.calendar_month,
                    //   color:Colors.green,
                    //   size: 20,
                    // )
                    prefixIcon: Icon(Icons.edit_note),
                  ),
                ),
              ),

              SizedBox(height: 50),
              Container(
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
                            " - Rs. ",
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
                            " - Rs. ",
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
                            " - Rs. ",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ],
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
