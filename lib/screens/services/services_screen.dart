import 'package:apartment_service_solution/screens/services/view_services_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 30, bottom: 30),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            Container(
              width: width - 60,
              child: Stack(
                children: [
                  Positioned(
                    top: (width / 8) - (height * 0.08) / 2,
                    left: width / 7,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: backgroundGreen,
                        ),
                        height: width / 8,
                        width: width - (70 + width / 8),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width / 7,
                            ),
                            Icon(Icons.room_service_rounded,
                                size: 50,
                                color: iconGreen
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Center(
                                child: Text('Services',
                                    style: TextStyle(
                                        color: iconGreen,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold))),
                          ],
                        )),
                  ),
                  Container(
                    height: width / 6 + 10,
                    width: width / 6 + 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                  Positioned(
                    left: 5,
                    top: 5,
                    child: Container(
                      height: width / 6,
                      width: width / 6,
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
            ),
            SizedBox(height: 80,),
            Row(children: [
              Text("Select a service category",style: TextStyle(
                  color: iconGreen,
                  fontSize: 18,
                  fontWeight: FontWeight.bold))
            ],),
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 50,),
                Container(
                  width: width*0.45,
                  child: Text("COOKING",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
                ),
                ElevatedButton(
                  child: Text('VIEW'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ViewServices(category: 'COOKING',)),
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
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 50,),
                Container(
                  width: width*0.45,
                  child: Text("WASHING",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
                ),
                ElevatedButton(
                  child: Text('VIEW'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ViewServices(category: 'WASHING',)),
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
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 50,),
                Container(
                  width: width*0.45,
                  child: Text("CLEANING",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
                ),
                ElevatedButton(
                  child: Text('VIEW'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ViewServices(category: 'CLEANING',)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: blue,
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
