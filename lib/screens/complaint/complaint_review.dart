import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ComplaintReview extends StatefulWidget {
  final String id;
  final String category;
  final String description;
  final String reply;
  final String status;
  const ComplaintReview(
      {Key? key,
      required this.id,
      required this.category,
      required this.description,
      required this.reply,
      required this.status})
      : super(key: key);

  @override
  _ComplaintReviewState createState() => _ComplaintReviewState();
}

class _ComplaintReviewState extends State<ComplaintReview> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(13.0),
                    bottomRight: const Radius.circular(13.0),
                  ),
                  color: backgroundGreen,
                ),
                height: width / 8,
                width: width - 60,
                child: Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Center(
                        child: Text('Complaint Review',
                            style: TextStyle(
                                color: iconGreen,
                                fontSize: 22,
                                fontWeight: FontWeight.bold))),
                  ],
                )),
            SizedBox(
              height: height / 18,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: backgroundGreen,
              ),
              height: height * 0.3,
              width: width - 40,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Complaint ID : "+ widget.id,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Category : "+ widget.category,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Description : "+ widget.description,
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 18,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xffEFDE47).withOpacity(0.39),
              ),
              height: height * 0.2,
              width: width - 40,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                       "Reply : "+ widget.reply,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Current Status : "+widget.status,
                      style: TextStyle(fontSize: 18),
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
