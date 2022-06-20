import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/pagelist.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}
int pageIdx = 0;
class _BottomNavBarState extends State<BottomNavBar> {
  DateTime pre_backpress = DateTime.now();
  @override
  Widget build(BuildContext context) {


    return WillPopScope(
        onWillPop: () async{
          final timegap = DateTime.now().difference(pre_backpress);
          final cantExit = timegap >= Duration(seconds: 2);
          pre_backpress = DateTime.now();
          if(cantExit){
            Get.snackbar("Exit", "Press Back button again to Exit",duration: Duration(seconds: 2),backgroundColor: Colors.white);
            return false;
          }else{
            return true;
          }
        },
        child: Scaffold(
            body:  pageList[pageIdx],
            bottomNavigationBar: ConvexAppBar(
              backgroundColor: Color(0xff81BDF9),
              activeColor: Colors.white,
              initialActiveIndex: pageIdx,
              //gradient: ,
              onTap: (idx) {
                setState(() {
                  pageIdx = idx;
                });},
              items: const [
                TabItem(icon: ImageIcon(
                  AssetImage("assets/icons/home.png"),
                  color: iconGreen,
                  size: 50,
                ), title: 'Home',),
                TabItem(icon : Icon(
                  Icons.add_box_outlined,
                  color: iconGreen,
                  size: 25,
                ), title: 'Profile',),
                TabItem(icon : ImageIcon(
                  AssetImage("assets/icons/Bnavright.png"),
                  color: iconGreen,
                  size: 50,
                ), title: 'Services'),
              ],
            ))
    );
  }
}









