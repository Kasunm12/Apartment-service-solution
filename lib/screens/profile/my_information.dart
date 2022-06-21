import 'package:apartment_service_solution/screens/login.dart';
import 'package:apartment_service_solution/screens/profile/my_information_edit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../constants/baseAPI.dart';
import '../../constants/colors.dart';

String Resident_id = '';
String Block_number = '';
String House_number = '';
String Phone_number = '';
String NIC = '';
String Gender = '';
String DOB = '';
String Occupation = '';

class MyInformation extends StatefulWidget {
  const MyInformation({Key? key}) : super(key: key);

  @override
  _MyInformationState createState() => _MyInformationState();
}

class _MyInformationState extends State<MyInformation> {

  Future myinfor()  async{
    try {
      var response = await Dio().get(Base_API + "/resident/"+id,
          options: Options(headers: {
            'Authorization': token, //HEADERS
          }));
      setState(() {
        name = response.data['data']['name'];
        email = response.data['data']['email'];
        Resident_id = response.data['data']['resident_id'];
        Block_number = response.data['data']['block_number'];
        House_number = response.data['data']['house_number'];
        Phone_number = response.data['data']['phone_number'];
        NIC = response.data['data']['nic'];
        Gender = response.data['data']['gender'];
        DOB = response.data['data']['dob'];
        Occupation = response.data['data']['occupation'];
      });
    } on DioError catch (e) {
      debugPrint("error:${e.toString()}");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    myinfor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundGreen,
      body: Column(
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
                IconButton(
                  icon: ImageIcon(
                    AssetImage("assets/icons/edit.png"),
                    color: iconGreen,
                    size: 50,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const MyInformationEdit()),
                    );
                  },
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
                          Text(
                            name,
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
                                "Resident ID",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Flexible(
                            child: RichText(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1, // this will show dots(...) after 1 lines
                              strutStyle: StrutStyle(fontSize: 12.0),
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                  text: Resident_id
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
                                "E-mail",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Flexible(
                            child: RichText(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1, // this will show dots(...) after 1 lines
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
                            Block_number,
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
                          Text(
                            House_number,
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
                                "Phone Number",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            Phone_number,
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
                                "NIC",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            NIC,
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
                                "Gender",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            Gender,
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
                                "DOB",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            DOB,
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
                                "Occupation",
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              )),
                          Text(
                            Occupation,
                            style: TextStyle(fontSize: 18, color: Colors.black),
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
    );
  }
}
