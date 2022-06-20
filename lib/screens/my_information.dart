import 'package:apartment_service_solution/screens/my_information_edit.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MyInformation extends StatefulWidget {
  const MyInformation({Key? key}) : super(key: key);

  @override
  _MyInformationState createState() => _MyInformationState();
}

class _MyInformationState extends State<MyInformation> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundGreen,
      body: Column(
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: width / 4 + 10,
                    width: width / 4 + 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                  Positioned(
                    left: 5,
                    top: 5,
                    child: Container(
                      height: width / 4,
                      width: width / 4,
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
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sadali Fernando",
            style: TextStyle(fontSize: 26, color: iconGreen),
          ),
          SizedBox(
            height: height / 10,
          ),
          Padding(
            padding:  const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ImageIcon(
                  AssetImage("assets/icons/information.png"),
                  color: iconGreen,
                  size: 50,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "My Information",
                  style: TextStyle(fontSize: 22, color: iconGreen),
                ),
                SizedBox(
                  width: width / 6,
                ),
                IconButton(
                  icon: ImageIcon(
                    AssetImage("assets/icons/edit.png"),
                    color: iconGreen,
                    size: 50,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const MyInformationEdit()),
                    );
                  },
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
              child: Container(
                height: height/2 - 30,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: width / 3,
                              child: Text(
                            "Name",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          )),
                          Text(
                            "Family Profile",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      Divider(color: Colors.black),
                      SizedBox(
                        height: height * 0.018,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: width / 3,
                              child: Text(
                                "Resident ID",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            "Family Profile",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      Divider(color: Colors.black),
                      SizedBox(
                        height: height * 0.018,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: width / 3,
                              child: Text(
                                "E-mail",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            "Family Profile",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      Divider(color: Colors.black),
                      SizedBox(
                        height: height * 0.018,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: width / 3,
                              child: Text(
                                "Block No",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            "Family Profile",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      Divider(color: Colors.black),
                      SizedBox(
                        height: height * 0.018,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: width / 3,
                              child: Text(
                                "House No",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            "Family Profile",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      Divider(color: Colors.black),
                      SizedBox(
                        height: height * 0.018,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: width / 3,
                              child: Text(
                                "Phone Number",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            "Family Profile",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      Divider(color: Colors.black),
                      SizedBox(
                        height: height * 0.018,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: width / 3,
                              child: Text(
                                "NIC",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            "Family Profile",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      Divider(color: Colors.black),
                      SizedBox(
                        height: height * 0.018,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: width / 3,
                              child: Text(
                                "Gender",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            "Family Profile",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      Divider(color: Colors.black),
                      SizedBox(
                        height: height * 0.018,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: width / 3,
                              child: Text(
                                "DOB",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            "Family Profile",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      Divider(color: Colors.black),
                      SizedBox(
                        height: height * 0.018,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: width / 3,
                              child: Text(
                                "Occupation",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            "Family Profile",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      Divider(color: Colors.black),
                      SizedBox(
                        height: height * 0.018,
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
