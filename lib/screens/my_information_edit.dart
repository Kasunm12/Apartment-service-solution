import 'package:apartment_service_solution/screens/login.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MyInformationEdit extends StatefulWidget {
  const MyInformationEdit({Key? key}) : super(key: key);

  @override
  _MyInformationEditState createState() => _MyInformationEditState();
}

class _MyInformationEditState extends State<MyInformationEdit> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundGreen,
      body: SingleChildScrollView(
        child: Column(
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
              name,
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
                  ImageIcon(
                    AssetImage("assets/icons/edit.png"),
                    color: Color(0xff0C177C),
                    size: 50,
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
                            Container(
                              width: (width / 3)*2-60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter Name',
                                    hintText: name,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                              ),
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
                            Container(
                              width: (width / 3)*2-60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter ID',
                                    hintText: id,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                              ),
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
                            Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2, // this will show dots(...) after 1 lines
                                strutStyle: StrutStyle(fontSize: 12.0),
                                text: TextSpan(
                                    style: TextStyle(color: Colors.black, fontSize: 18),
                                    text: email
                                ),
                              ),
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
                              "15A",
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
                            Container(
                              width: (width / 3)*2-60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter House No',
                                    hintText: '83/B',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                              ),
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
                            Container(
                              width: (width / 3)*2-60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter Phone Number',
                                    hintText: '0768597364',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                              ),
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
                            Container(
                              width: (width / 3)*2-60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter NIC',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                              ),
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
                            Container(
                              width: (width / 3)*2-60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter Gender',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                              ),
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
                            Container(
                              width: (width / 3)*2-60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter something',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                              ),
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
                            Container(
                              width: (width / 3)*2-60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter Occupation',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                              ),
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
      ),
    );
  }
}
