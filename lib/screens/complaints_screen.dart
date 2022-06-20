import 'package:apartment_service_solution/screens/complaint_review.dart';
import 'package:apartment_service_solution/screens/new_complaint_screen.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Complaint extends StatefulWidget {
  const Complaint({Key? key}) : super(key: key);

  @override
  _ComplaintState createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
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
                            ImageIcon(
                              AssetImage("assets/icons/Complaints.png"),
                              color: iconGreen,
                              size: 50,
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Center(
                                child: Text('Complaints',
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
            SizedBox(
              height: height / 18,
            ),
            Container(
              height: height * 3 / 5,
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ComplaintReview(
                                    id: (index + 1).toString(),
                                    category: 'Electricity',
                                    description: 'We have power outage since morning only in our block.',
                                    reply:
                                        'Power supply would be back within 30 mins',
                                    status: 'Completed',
                                  )),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: backgroundGreen,
                            ),
                            height: height * 0.16,
                            width: width - 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text((index + 1).toString() +
                                      " " +
                                      "Electricity")
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 5,
                            top: height * 0.04,
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: const Radius.circular(13.0),
                                    bottomRight: const Radius.circular(13.0),
                                  ),
                                  color: Colors.white,
                                ),
                                height: height * 0.11,
                                width: width - 60,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("05/01/22"),
                                      Text("We  have power outage since ...")
                                    ],
                                  ),
                                )),
                          ),
                          Positioned(
                            right: 25,
                            top: (height * 0.12) / 2,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text('Add new complaint'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewComplaint()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: buttonGreen,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
