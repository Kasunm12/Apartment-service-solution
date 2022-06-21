import 'package:flutter/material.dart';

class AddedServices extends StatefulWidget {
  const AddedServices({ Key? key }) : super(key: key);

  @override
  State<AddedServices> createState() => _AddedServicesState();
}

class _AddedServicesState extends State<AddedServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: ListView(

        children: [
          // icon:Icon(
          //   Icons.calendar_month,
          //   color:Colors.green,
          //   size: 20,
          // )
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),

            child: Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [

                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back),

                    SizedBox(height: 20),
                    Text(
                      "Requested Services",

                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 11, 221, 64),
                          fontWeight: FontWeight.bold
                      ),
                    ),


                  ],
                )
              ],
            ),
          ),

          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 245, 245),
                  borderRadius: BorderRadius.circular(12)),
              child:Row(
                children:[

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "COOKING",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          "Monday 8-12",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Tuesday 2-5",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 10),
                        Text(
                          "Wdnesday 8-12",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),

          //=======================================================================

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 245, 245),
                  borderRadius: BorderRadius.circular(12)),
              child:Row(
                children:[

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "WASHING",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          "Monday 8-12",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Tuesday 2-5",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 10),
                        Text(
                          "Wdnesday 8-12",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
//===================================================================================
          SizedBox(height:20),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 245, 245),
                  borderRadius: BorderRadius.circular(12)),
              child:Row(
                children:[

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "CLEANING",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          "Monday 8-12",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Tuesday 2-5",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 10),
                        Text(
                          "Wdnesday 8-12",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),

          //=======================================================================

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 245, 245),
                  borderRadius: BorderRadius.circular(12)),
              child:Row(
                children:[

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "WASHING",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          "Monday 8-12",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Tuesday 2-5",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 10),
                        Text(
                          "Wdnesday 8-12",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
//===================================================================================
          SizedBox(height:20),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 245, 245),
                  borderRadius: BorderRadius.circular(12)),
              child:Row(
                children:[

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "CLEANING",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          "Monday 8-12",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Tuesday 2-5",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 10),
                        Text(
                          "Wdnesday 8-12",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ],
      ),


    );
  }
}