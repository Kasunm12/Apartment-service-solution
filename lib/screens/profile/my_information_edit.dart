import 'package:apartment_service_solution/screens/login.dart';
import 'package:apartment_service_solution/screens/profile/my_information.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../constants/baseAPI.dart';
import '../../constants/colors.dart';

class MyInformationEdit extends StatefulWidget {
  const MyInformationEdit({Key? key}) : super(key: key);

  @override
  _MyInformationEditState createState() => _MyInformationEditState();
}

class _MyInformationEditState extends State<MyInformationEdit> {
  String _name = name;
  String _blockNo = Block_number;
  String _houseNo = House_number;
  String _phoneNo = Phone_number;
  String _NIC = NIC;
  String _Gender = Gender;
  String _DOB = DOB;
  String _Occupation = Occupation;

  Future editmyinfor()  async{
    try {
      var response = await Dio().put(Base_API + "/resident/"+id,
          data: {
            "name" : _name,
            "resident_id" : Resident_id,
            "email" : email,
            "block_number" : _blockNo,
            "house_number" : _houseNo,
            "phone_number" : _phoneNo,
            "nic" : _NIC,
            "gender" : _Gender,
            "dob" : _DOB,
            "occupation" : _Occupation,
            "password" : password,
          },
          options: Options(headers: {
            'Authorization': token, //HEADERS
          }));
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
            const MyInformation()),
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
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
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
                  height: height / 2 - 30,
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
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                            Container(
                              width: (width / 3) * 2 - 60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter Name',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                onChanged: (String? text) {
                                  _name = text!;
                                },
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
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                            Container(
                              width: (width / 3) * 2 - 60,
                              child: Text(Resident_id),
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
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                            Container(
                              width: (width / 3) * 2 - 60,
                              child: Text(email),
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
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                            Container(
                              width: (width / 3) * 2 - 60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                    EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Block No',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                onChanged: (String? text) {
                                  _blockNo = text!;
                                },
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
                                  "House No",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                            Container(
                              width: (width / 3) * 2 - 60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter House No',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                onChanged: (String? text) {
                                  _houseNo = text!;
                                },
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
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                            Container(
                              width: (width / 3) * 2 - 60,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter Phone Number',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                onChanged: (String? text) {
                                  _phoneNo = text!;
                                },
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
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                            Container(
                              width: (width / 3) * 2 - 60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter NIC',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                onChanged: (String? text) {
                                  _NIC = text!;
                                },
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
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                            Container(
                              width: (width / 3) * 2 - 60,
                              child: new DropdownButton<String>(
                                hint: Text("Status"),
                                value: _Gender,
                                items: <String>[
                                  'Female',
                                  'Male',
                                  '',
                                ].map((String value) {
                                  return new DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? text) {
                                  setState(() {
                                    _Gender = text!;
                                  });
                                },
                              )
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
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                            Container(
                              width: (width / 3) * 2 - 60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter something',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                onChanged: (String? text) {
                                  _DOB = text!;
                                },
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
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                            Container(
                              width: (width / 3) * 2 - 60,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    labelText: 'Enter Occupation',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: darkblue),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                onChanged: (String? text) {
                                  _Occupation = text!;
                                },
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
                ),
            ),
            ElevatedButton(
              child: Text('UPDATE'),
              onPressed: () {
                editmyinfor();
              },
              style: ElevatedButton.styleFrom(
                primary: buttonGreen,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
