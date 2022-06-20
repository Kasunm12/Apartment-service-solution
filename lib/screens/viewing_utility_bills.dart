import 'package:apartment_service_solution/screens/previousutilitybills.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ViewingUtilityBills extends StatefulWidget {
  const ViewingUtilityBills({Key? key}) : super(key: key);

  @override
  _ViewingUtilityBillsState createState() => _ViewingUtilityBillsState();
}

class _ViewingUtilityBillsState extends State<ViewingUtilityBills> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
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
                                ImageIcon(
                                  AssetImage("assets/icons/Bills.png"),
                                  color: iconGreen,
                                  size: 50,
                                ),
                                SizedBox(
                                  width: 24,
                                ),
                                Center(
                                    child: Text('Bills',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Electricity Bill", style: TextStyle(color: Colors.black, fontSize: 24),),
                    ElevatedButton(
                      child: Text('View Previous Bills', style: TextStyle(color: Colors.black
                      ),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PreviousUtilityBills()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: blue,
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: backgroundGreen,
                  ),
                  height: 280,
                  width: width - 40,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: width*2/3 - 70,
                              child: Text(
                                "Last Bill ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Text(" - Rs. ",style: TextStyle(fontSize: 18),)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: width*2/3 - 70,
                              child: Text(
                                "Current month bill ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Text(" - Rs. ",style: TextStyle(fontSize: 18),)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: width*2/3 - 70,
                              child: Text(
                                "Current month bill ID ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Text(" - Rs. ",style: TextStyle(fontSize: 18),)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: width*2/3 - 70,
                              child: Text(
                                "Paid Amount for this month ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Text(" - Rs. ",style: TextStyle(fontSize: 18),)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: width*2/3 - 70,
                              child: Text(
                                "Payable Amount ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Text(" - Rs. ",style: TextStyle(fontSize: 18),)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: width*2/3 - 70,
                              child: Text(
                                "Due Date ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Text(" - Rs. ",style: TextStyle(fontSize: 18),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Row(children: [
                  Text("Water Bill",  style: TextStyle(color: Colors.black, fontSize: 24),)
                ],),
                SizedBox(
                  height: height * 0.025,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: backgroundGreen,
                  ),
                  height: 320,
                  width: width - 40,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: width*2/3 - 70,
                              child: Text(
                                "Last Bill ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Text(" - Rs. ",style: TextStyle(fontSize: 18),)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: width*2/3 - 70,
                              child: Text(
                                "Current month bill ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Text(" - Rs. ",style: TextStyle(fontSize: 18),)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),Row(
                          children: [
                            Container(
                              width: width*2/3 - 70,
                              child: Text(
                                "Current month bill ID ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Text(" - Rs. ",style: TextStyle(fontSize: 18),)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),Row(
                          children: [
                            Container(
                              width: width*2/3 - 70,
                              child: Text(
                                "Paid Amount for this month ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Text(" - Rs. ",style: TextStyle(fontSize: 18),)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),Row(
                          children: [
                            Container(
                              width: width*2/3 - 70,
                              child: Text(
                                "Payable Amount ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Text(" - Rs. ",style: TextStyle(fontSize: 18),)
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: blue,
                              ),
                              height: width / 8,
                              width: width * 3/ 5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Container(
                                        width: width*2/5,
                                        child: Text('Thank you for finishing the payment',
                                            style: TextStyle(
                                                color: darkblue,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                      )),
                                  ImageIcon(
                                    AssetImage("assets/icons/edit.png"),
                                    color: darkblue,
                                    size: 50,
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
