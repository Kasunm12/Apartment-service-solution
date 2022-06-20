import 'package:flutter/material.dart';

import '../constants/colors.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({Key? key}) : super(key: key);

  @override
  _PasswordChangeState createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
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
              "Sadali Fernando",
              style: TextStyle(fontSize: 26, color: iconGreen),
            ),
            SizedBox(
              height: height / 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 30, bottom: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ImageIcon(
                    AssetImage("assets/icons/lock.png"),
                    color: iconGreen,
                    size: 50,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: width/2 - 30,
                        child: Text(
                          "Old Password",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ),
                      Container(
                        width: width/2 - 30,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                                labelText: "Verify password",
                                fillColor: Colors.white,
                              ),
                            ),
                            Divider(color: Colors.black),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: width/2 - 30,
                        child: Text(
                          "New Password",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ),
                      Container(
                        width: width/2 - 30,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                                labelText: " Set new password",
                                fillColor: Colors.white,
                              ),
                            ),
                            Divider(color: Colors.black),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: width/2 - 30,
                        child: Text(
                          "Confirm Password",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ),
                      Container(
                        width: width/2 - 30,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                                labelText: "Confirm password",
                                fillColor: Colors.white,
                              ),
                            ),
                            Divider(color: Colors.black),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
