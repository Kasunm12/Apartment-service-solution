import 'package:apartment_service_solution/screens/complaint/complaints_screen.dart';
import 'package:apartment_service_solution/screens/login.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/baseAPI.dart';
import '../../constants/colors.dart';

class NewComplaint extends StatefulWidget {
  const NewComplaint({Key? key}) : super(key: key);

  @override
  _NewComplaintState createState() => _NewComplaintState();
}

class _NewComplaintState extends State<NewComplaint> {
  String Description = '';
  String Category = 'Other';

  Future addComplaint() async {
    try {
      var response = await Dio().post(Base_API + "/complaint/create",
          data: {"category": Category, "description": Description},
          options: Options(headers: {
            'Authorization': token, //HEADERS
          }));
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Complaint()),
      );
      print(response);
    } on DioError catch (e) {
      debugPrint("error:${e.toString()}");
    }
  }

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
                    child: new DropdownButton<String>(
                      hint: Text("Status"),
                      value: Category,
                      items: <String>[
                        'Other',
                        'Air Conditioner',
                        'Electricity',
                        'Elevator',
                        'Plumber',
                        'Waste Management Issues',
                      ].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (String? text) {
                        setState(() {
                          Category = text!;
                        });
                      },
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
                    onChanged: (String? text) {
                      Description = text!;
                    },
                  ),
                ),
                SizedBox(
                  height: height * 0.2,
                ),
                ElevatedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    if(Description == ''){
                      Get.snackbar(
                        "Not success",
                        "Add your complaint",
                        backgroundColor: Colors.deepPurple,
                        colorText: Colors.white,
                        borderWidth: 1,
                        borderColor: Colors.grey,
                      );
                    }else{
                      addComplaint();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: buttonGreen,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    textStyle:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
