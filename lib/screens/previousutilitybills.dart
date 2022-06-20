import 'dart:ui';

import 'package:flutter/material.dart';

class PreviousUtilityBills extends StatefulWidget {
  const PreviousUtilityBills({Key? key}) : super(key: key);

  @override
  State<PreviousUtilityBills> createState() => _PreviousUtilityBillsState();
}

class _PreviousUtilityBillsState extends State<PreviousUtilityBills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 33, 221, 235),
                  borderRadius:BorderRadius.circular(12),
                  ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            child: Center(
                              child: Text(
                                "View Previous Bills",
                                style: TextStyle(color: Color.fromARGB(255, 4, 86, 209)),),
                              ),
                              ), 
                    
                      ],
                      ),
                    ),

                ],
                ),
              ),
            ),

            SizedBox(height: 30),

            //text form - month and bill type
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: TextField(
                maxLength:12,
                decoration: InputDecoration(
                  hintText: "Month",
                  hintStyle: TextStyle(color: Color.fromARGB(255, 8, 156, 224)),
                  labelText: "Enter Month",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color:Colors.blueAccent)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color:Colors.red)
                  ),
                  // icon:Icon(
                  //   Icons.calendar_month,
                  //   color:Colors.green,
                  //   size: 20,
                  // )
                  prefixIcon: Icon(Icons.calendar_month),



                ),
              ),
            ),



            //==================================================

             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(2),
                
                // child: Row(
                //   children: [
                //     Expanded(
                //       child: Column(
                //         children: [
                //           Container(
                //             child: Center(
                //               child: Text(
                //                 "View Previous Bills",
                //                 style: TextStyle(color: Color.fromARGB(255, 4, 86, 209)),),
                //               ),
                //               ), 
                    
                //       ],
                //       ),
                //     ),

                // ],
                // ),
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
                    borderSide: BorderSide(color:Colors.blueAccent)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color:Colors.red)
                  ),
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

             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 61, 231, 231),
                  borderRadius:BorderRadius.circular(12),
                  ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            child: Center(
                              child: Text(
                                "Bill Amount for the month -Rs 2500",
                                style: TextStyle(color: Colors.black),),
                              ),

                              
                              ), 

                              SizedBox(height: 20),
                              

                              Container(
                            child: Center(
                              child: Text(
                                "Bill ID -12345",
                                style: TextStyle(color: Colors.black),),
                              ),

                              
                              ),

                              SizedBox(height: 20),

                              Container(
                            child: Center(
                              child: Text(
                                "Paid Amount for the month -Rs. 20000",
                                style: TextStyle(color: Colors.black),),
                              ),

                              
                              ),
                    
                      ],
                      ),

                      
                    ),

                ],
                ),
              ),
            ),






          ],

        ),
        
         ),

    );
  }
}
