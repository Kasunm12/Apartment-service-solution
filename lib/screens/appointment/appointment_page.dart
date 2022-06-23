import 'dart:convert';

import 'package:apartment_service_solution/screens/appointment/add_appointment_page.dart';
import 'package:flutter/material.dart';
//import 'package:uom_project/src/process/add_appointment_page.dart';
//import 'package:uom_project/services/api_service.dart' as api_service;

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  bool isDataLoading = false;

  var apiReturnResponse = [
   
  ];

  /*getAllPreviousData() async {
    try {
      setState(() {
      isDataLoading = true;
      });
      var response = await api_service.fetchGet("residentappointment");
      if (response.statusCode == 200) {
        var res = json.decode(response.body);
        // please assign response data to  apiReturnResponse variable in here
        setState(() {
          apiReturnResponse = res;
          isDataLoading = false;
        });
      } else {
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
  }*/

  @override
  void initState() {
    super.initState();
   // getAllPreviousData();
    // enable above line after change path and data
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        centerTitle: false,
        title: const Text(
          "Appointments",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        actions: [
          IconButton(
              tooltip: "Add new appointment",
              onPressed: () async {
                var result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const AddAppointmentPage()));
                if (result != null) {
             //     getAllPreviousData();
                }
              },
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: CustomScrollView(slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 20.0,
            ),
            const Text("Previous appointments",
                style: TextStyle(fontSize: 20.0)),
          ])),
          isDataLoading
              ? SliverList(
                  delegate: SliverChildListDelegate([buildLoadingIndicator()]))
              : SliverList(
                  delegate: SliverChildListDelegate(
                      List.generate(apiReturnResponse.length, (index) {
                  return Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: buildAppointmentList(apiReturnResponse[index]));
                })))
        ]),
      ),
    );
  }

  Widget buildLoadingIndicator() {
    return const SizedBox(
      width: 50,
      height: 50,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
      ),
    );
  }

  Widget buildAppointmentList(currentAppointment) {
    return Card(
      child: ListTile(
        title: Text(currentAppointment['appointmentName'].toString()),
        subtitle: Text(
            "No Of Guests : " + currentAppointment['numOfGuest'].toString()),
      ),
    );
  }
}
