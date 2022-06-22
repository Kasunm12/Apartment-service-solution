import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:uom_project/services/api_service.dart' as api_service;

class AddAppointmentPage extends StatefulWidget {
  const AddAppointmentPage({Key? key}) : super(key: key);

  @override
  State<AddAppointmentPage> createState() => _AddAppointmentPageState();
}

class _AddAppointmentPageState extends State<AddAppointmentPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nameCtrl = TextEditingController();
  final numOfGustCtrl = TextEditingController();
  final nicCtrl = TextEditingController();
  final dateCtrl = TextEditingController();
  final noOfDateStayingCtrl = TextEditingController();
  final mobileCtrl = TextEditingController();
  final expDateCtrl = TextEditingController();

  bool isDataLoading = false;

  /*submitDataToApi() async {
    if (_formKey.currentState!.validate()) {
      Random random = new Random();
      int randomNumber = random.nextInt(9000) + 1000;
      print("Workign here");
      try {
        var bodyObj = {
          "appointmentName": nameCtrl.value.text,
          "numOfGuest": numOfGustCtrl.value.text,
          "appointmentNIC": nicCtrl.value.text,
          "appointmentDate": dateCtrl.value.text,
          "mobileNumber": mobileCtrl.value.text,
          "expireDate": expDateCtrl.value.text,
           "otp": randomNumber,
        };
        var response =
            await api_service.fetchPost("residentappointment/addAppointment", bodyObj);
        if (response.statusCode == 200) {
          var res = json.decode(response.body);
          Navigator.pop(context, true);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Appointment added successfully'),
            ),
          );
        } else {
          var res = json.decode(response.body);
          print(res);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Something went wrong'),
            ),
          );
          setState(() {
            isDataLoading = false;
          });
        }
      } catch (e) {
        setState(() {
          isDataLoading = false;
        });
      }
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        centerTitle: false,
        title: const Text(
          "Add new appointments",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: CustomScrollView(slivers: <Widget>[
            SliverList(
                delegate: SliverChildListDelegate([
              const SizedBox(
                height: 20.0,
              ),
              const Text("Please enter appointment details",
                  style: TextStyle(fontSize: 20.0)),
              const Divider(height: 50),
              buildNameInput(),
              const SizedBox(height: 20.0),
              buildNoOfGuest(),
              const SizedBox(height: 20.0),
              buildNic(),
              const SizedBox(height: 20.0),
              buildDate(),
              const SizedBox(height: 20.0),
              buildDateStaying(),
              const SizedBox(height: 20.0),
              buildMobileNumber(),
              const SizedBox(height: 20.0),
              buildExpDate(),
              const SizedBox(height: 20.0),
              buildButton(),
              const SizedBox(height: 100.0),
            ])),
          ]),
        ),
      ),
    );
  }

  Widget buildNameInput() {
    return Material(
      shadowColor: Colors.grey,
      color: Colors.transparent,
      child: TextFormField(
        controller: nameCtrl,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Name is required';
          }
          return null;
        },
        decoration: const InputDecoration(
          hintText: 'Name',
        ),
      ),
    );
  }

  Widget buildNoOfGuest() {
    return Material(
      shadowColor: Colors.grey,
      color: Colors.transparent,
      child: TextFormField(
        controller: numOfGustCtrl,
        validator: (value) {
          if (value!.isEmpty) {
            return 'No of guests is required';
          }
          return null;
        },
        decoration: const InputDecoration(
          hintText: 'No of guests',
        ),
      ),
    );
  }

  Widget buildNic() {
    return Material(
      shadowColor: Colors.grey,
      color: Colors.transparent,
      child: TextFormField(
        controller: nicCtrl,
        validator: (value) {
          if (value!.isEmpty) {
            return 'NIC is required';
          }
          return null;
        },
        decoration: const InputDecoration(
          hintText: 'NIC',
        ),
      ),
    );
  }

  Widget buildDate() {
    return Material(
      shadowColor: Colors.grey,
      color: Colors.transparent,
      child: TextFormField(
        controller: dateCtrl,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Date required';
          }
          return null;
        },
        decoration: const InputDecoration(
          hintText: 'Date',
        ),
      ),
    );
  }

  Widget buildDateStaying() {
    return Material(
      shadowColor: Colors.grey,
      color: Colors.transparent,
      child: TextFormField(
        controller: noOfDateStayingCtrl,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Date staying required';
          }
          return null;
        },
        decoration: const InputDecoration(
          hintText: 'Date staying',
        ),
      ),
    );
  }

  Widget buildMobileNumber() {
    return Material(
      shadowColor: Colors.grey,
      color: Colors.transparent,
      child: TextFormField(
        controller: mobileCtrl,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Mobile required';
          }
          else if(value.length>10||value.length<10){
            return 'Invalid number';
          }
          return null;
        },
        decoration: const InputDecoration(
          hintText: 'Mobile',
        ),
      ),
    );
  }

  Widget buildExpDate() {
    return Material(
      shadowColor: Colors.grey,
      color: Colors.transparent,
      child: TextFormField(
        controller: expDateCtrl,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Exp date required';
          }
          return null;
        },
        decoration: const InputDecoration(
          hintText: 'Exp date',
        ),
      ),
    );
  }

  Widget buildButton() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          // side: BorderSide(color: Colors.red)
        ),
        onPressed: () {
          if (!isDataLoading) {
         //   submitDataToApi();
          }
        },
        color: Colors.blue,
        textColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: setUpButtonChild(),
        ),
      ),
    );
  }

  Widget setUpButtonChild() {
    if (!isDataLoading) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Text("Submit",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: MediaQuery.of(context).size.height / 40,
            )),
      );
    } else {
      return const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      );
    }
  }
}
