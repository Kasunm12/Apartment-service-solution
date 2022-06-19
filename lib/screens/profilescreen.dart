import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          SizedBox(height: height* 0.1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: width/4+10,
                    width: width/4+10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      color: Colors.white
                        ),
                  ),
                  Positioned(
                    left: 5,
                    top: 5,
                    child: Container(
                      height: width/4,
                      width: width/4,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage("https://media.marketrealist.com/brand-img/Ik1D_rqGf/0x0/newprofile-pic-1-1652281674003.jpg",
                                  scale: 2.0),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text("Sadali Fernando", style: TextStyle(fontSize: 26, color: iconGreen),),
          SizedBox(height: height/5,),
          Padding(
            padding: const EdgeInsets.only( left: 30, right: 30, bottom: 20),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ImageIcon(
                      AssetImage("assets/icons/information.png"),
                      color: iconGreen,
                      size: 50,
                    ),
                    SizedBox(width: 15,),
                    Text("Sadali Fernando", style: TextStyle(fontSize: 22, color: iconGreen),),
                  ],
                ),
                Divider(
                    color: Colors.black
                ),
                SizedBox(height: height*0.05,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ImageIcon(
                      AssetImage("assets/icons/family.png"),
                      color: iconGreen,
                      size: 50,
                    ),
                    SizedBox(width: 15,),
                    Text("Family Profile", style: TextStyle(fontSize: 22, color: iconGreen),),
                  ],
                ),
                Divider(
                    color: Colors.black
                ),
                SizedBox(height: height*0.1,),
                Row(
                 // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ImageIcon(
                      AssetImage("assets/icons/lock.png"),
                      color: iconGreen,
                      size: 50,
                    ),
                    SizedBox(width: 15,),
                    Text("Change Password", style: TextStyle(fontSize: 18, color: iconGreen),),
                  ],
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ImageIcon(
                      AssetImage("assets/icons/signout.png"),
                      color: iconGreen,
                      size: 50,
                    ),
                    SizedBox(width: 15,),
                    Text("Sign Out", style: TextStyle(fontSize: 18, color: iconGreen),),
                  ],
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
