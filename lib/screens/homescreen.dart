import 'package:apartment_service_solution/screens/complaint/complaints_screen.dart';
import 'package:apartment_service_solution/screens/login.dart';
import 'package:apartment_service_solution/screens/profile/profilescreen.dart';
import 'package:apartment_service_solution/screens/services/services_screen.dart';
import 'package:apartment_service_solution/screens/bill/viewing_utility_bills.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 26,),
                    Text("Home", style: TextStyle(fontSize: 26, color: iconGreen),),
                    IconButton(
                      onPressed: (){
                        //action coe when button is pressed
                      },
                      icon: Icon(Icons.notifications_none, color: iconGreen, size: 40,),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("Hello " + name + "!",style: TextStyle(fontSize: 22, color: iconGreen),),
                  ],
                ),
                SizedBox(height: height*0.015,),
                Row(
                  children: [
                    Text("We have prepared services for you",style: TextStyle(fontSize: 18, color: iconGreen),),
                  ],
                ),
                SizedBox(height: height*0.025,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProfilePage()),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: backgroundGreen,
                      ),
                      height: height * 0.1,
                      width: width - 40,
                      child: Row(
                        children: [
                          SizedBox(width: 24,),
                          ImageIcon(
                            AssetImage("assets/icons/Profile.png"),
                            color: iconGreen,
                            size: 50,
                          ),
                          SizedBox(width: 24,),
                          Center(
                              child: Text('Profile',
                                  style: TextStyle(
                                      color: iconGreen,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold))),
                        ],
                      )),
                ),
                SizedBox(height: height*0.015,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Complaint()),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: backgroundGreen,
                      ),
                      height: height * 0.1,
                      width: width - 40,
                      child: Row(
                        children: [
                          SizedBox(width: 24,),
                          ImageIcon(
                            AssetImage("assets/icons/Complaints.png"),
                            color: iconGreen,
                            size: 50,
                          ),
                          SizedBox(width: 24,),
                          Center(
                              child: Text('Complaints',
                                  style: TextStyle(
                                      color: iconGreen,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold))),
                        ],
                      )),
                ),
                SizedBox(height: height*0.015,),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: backgroundGreen,
                      ),
                      height: height * 0.1,
                      width: width - 40,
                      child: Row(
                        children: [
                          SizedBox(width: 24,),
                          ImageIcon(
                            AssetImage("assets/icons/Guest.png"),
                            color: iconGreen,
                            size: 50,
                          ),
                          SizedBox(width: 24,),
                          Center(
                              child: Text('Guest',
                                  style: TextStyle(
                                      color: iconGreen,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold))),
                        ],
                      )),
                ),
                SizedBox(height: height*0.015,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ViewingUtilityBills()),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: backgroundGreen,
                      ),
                      height: height * 0.1,
                      width: width - 40,
                      child: Row(
                        children: [
                          SizedBox(width: 24,),
                          ImageIcon(
                            AssetImage("assets/icons/Bills.png"),
                            color: iconGreen,
                            size: 50,
                          ),
                          SizedBox(width: 24,),
                          Center(
                              child: Text('Bills',
                                  style: TextStyle(
                                      color: iconGreen,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold))),
                        ],
                      )),
                ),
                SizedBox(height: height*0.015,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Services()),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: backgroundGreen,
                      ),
                      height: height * 0.1,
                      width: width - 40,
                      child: Row(
                        children: [
                          SizedBox(width: 24,),
                          Icon(Icons.room_service_rounded,
                              size: 50,
                              color: iconGreen
                          ),
                          SizedBox(width: 24,),
                          Center(
                              child: Text('Services',
                                  style: TextStyle(
                                      color: iconGreen,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold))),
                        ],
                      )),
                ),
                SizedBox(height: height*0.015,),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: backgroundGreen,
                      ),
                      height: height * 0.1,
                      width: width - 40,
                      child: Row(
                        children: [
                          SizedBox(width: 24,),
                          ImageIcon(
                            AssetImage("assets/icons/Appointment.png"),
                            color: iconGreen,
                            size: 50,
                          ),
                          SizedBox(width: 24,),
                          Center(
                              child: Text('Appointment',
                                  style: TextStyle(
                                      color: iconGreen,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold))),
                        ],
                      )),
                ),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
