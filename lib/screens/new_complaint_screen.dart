import 'package:flutter/material.dart';

import '../constants/colors.dart';

class NewComplaint extends StatefulWidget {
  const NewComplaint({Key? key}) : super(key: key);

  @override
  _NewComplaintState createState() => _NewComplaintState();
}

class _NewComplaintState extends State<NewComplaint> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
          child: SingleChildScrollView(
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
                            child: Text('New Complaint',
                                style: TextStyle(
                                    color: iconGreen,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold))),
                      ],
                    )),
                SizedBox(
                  height: height / 18,
                ),
                Row(
                  children: [
                    Text("Select Category",
                        style: TextStyle(fontSize: 18, color: iconGreen)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 50,
                    color: backgroundGreen,
                    child: DropdownButton<String>(
                      items: <String>[
                        'Air Conditioner',
                        'Electricity',
                        'Elevator',
                        'Plumber',
                        'Waste Management Issues',
                        'Other'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    )),
                SizedBox(
                  height: height / 5,
                ),
                Row(
                  children: [
                    Text("Description",
                        style: TextStyle(fontSize: 18, color: iconGreen)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: buttonGreen,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                      labelText: "Type your complaint here",
                      fillColor: Colors.white,
                    ),
                    minLines: 1, //Normal textInputField will be displayed
                    maxLines: 5, // when user presses enter it will adapt to it
                  ),
                ),
                SizedBox(height: height*0.2,),
                ElevatedButton(
                  child: Text('Submit'),
                  onPressed: () {
                   /* Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const NewComplaint()),
                    );*/
                  },
                  style:  ElevatedButton.styleFrom(
                    primary: buttonGreen,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
