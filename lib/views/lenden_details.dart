import 'package:flutter/material.dart';


class LendenDetails extends StatefulWidget {
  const LendenDetails({Key? key}) : super(key: key);

  @override
  State<LendenDetails> createState() => _LendenDetailsState();
}

class _LendenDetailsState extends State<LendenDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Palli Lenden",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),

      home: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromRGBO(124, 178, 66, 1),

          title: Text(
            "বিস্তারিত লেনদেন",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(134, 142, 127, 1),
            ),
            onPressed: () {
              Navigator.of(context)
                  .pop("/HomePage");


            },
          ),
        ),

        body: SafeArea(

          //------------------ list view to show the notifications --------------------
          child: ListView(

            //Scroll direction of list view
            scrollDirection: Axis.vertical,

            padding: const EdgeInsets.all(10),

            children: <Widget>[
              Card(
                color: Colors.grey[300],
                elevation: 1.0,
                child: Container(

                  decoration: BoxDecoration(
                    // border: Border.all(
                    //     // color: Colors.white70,
                    //     width: 5.0,
                    //     style: BorderStyle.solid
                    // ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10.0,right: 10.0),
                  height: 120,

                  //
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction Type         ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height:8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Phone number            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction ID:            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                            children: [
                              Column(
                                children: [
                                  Text("19/12/2022",
                                  textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              SizedBox(width: 10.0),
                              Column(
                                children: [
                                  Text("5:00PM",
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),

                            ]
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("1000 BDT",
                                textAlign: TextAlign.left,
                              ),
                              


                            ],
                          ),

                          SizedBox(height: 10.0),

                          Row(
                            children: [Text("Charge: ",
                              textAlign: TextAlign.left,
                            )],
                          ),
                        ],
                      ),
                    ],
                  ),


                ),
              ),

              Card(
                color: Colors.grey[300],
                elevation: 1.0,
                child: Container(

                  decoration: BoxDecoration(
                    // border: Border.all(
                    //     // color: Colors.white70,
                    //     width: 5.0,
                    //     style: BorderStyle.solid
                    // ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10.0,right: 10.0),
                  height: 120,

                  //
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction Type         ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height:8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Phone number            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction ID:            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                              children: [
                                Column(
                                  children: [
                                    Text("19/12/2022",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  children: [
                                    Text("5:00PM",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),

                              ]
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("1000 BDT",
                                textAlign: TextAlign.left,
                              ),


                            ],
                          ),

                          SizedBox(height: 10.0),

                          Row(
                            children: [Text("Charge: ",
                              textAlign: TextAlign.left,
                            )],
                          ),
                        ],
                      ),
                    ],
                  ),


                ),
              ),

              Card(
                color: Colors.grey[300],
                elevation: 1.0,
                child: Container(

                  decoration: BoxDecoration(
                    // border: Border.all(
                    //     // color: Colors.white70,
                    //     width: 5.0,
                    //     style: BorderStyle.solid
                    // ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10.0,right: 10.0),
                  height: 120,

                  //
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction Type         ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height:8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Phone number            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction ID:            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                              children: [
                                Column(
                                  children: [
                                    Text("19/12/2022",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  children: [
                                    Text("5:00PM",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),

                              ]
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("1000 BDT",
                                textAlign: TextAlign.left,
                              ),


                            ],
                          ),

                          SizedBox(height: 10.0),

                          Row(
                            children: [Text("Charge: ",
                              textAlign: TextAlign.left,
                            )],
                          ),
                        ],
                      ),
                    ],
                  ),


                ),
              ),

              Card(
                color: Colors.grey[300],
                elevation: 1.0,
                child: Container(

                  decoration: BoxDecoration(
                    // border: Border.all(
                    //     // color: Colors.white70,
                    //     width: 5.0,
                    //     style: BorderStyle.solid
                    // ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10.0,right: 10.0),
                  height: 120,

                  //
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction Type         ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height:8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Phone number            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction ID:            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                              children: [
                                Column(
                                  children: [
                                    Text("19/12/2022",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  children: [
                                    Text("5:00PM",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),

                              ]
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("1000 BDT",
                                textAlign: TextAlign.left,
                              ),


                            ],
                          ),

                          SizedBox(height: 10.0),

                          Row(
                            children: [Text("Charge: ",
                              textAlign: TextAlign.left,
                            )],
                          ),
                        ],
                      ),
                    ],
                  ),


                ),
              ),

              Card(
                color: Colors.grey[300],
                elevation: 1.0,
                child: Container(

                  decoration: BoxDecoration(
                    // border: Border.all(
                    //     // color: Colors.white70,
                    //     width: 5.0,
                    //     style: BorderStyle.solid
                    // ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10.0,right: 10.0),
                  height: 120,

                  //
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction Type         ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height:8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Phone number            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction ID:            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                              children: [
                                Column(
                                  children: [
                                    Text("19/12/2022",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  children: [
                                    Text("5:00PM",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),

                              ]
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("1000 BDT",
                                textAlign: TextAlign.left,
                              ),


                            ],
                          ),

                          SizedBox(height: 10.0),

                          Row(
                            children: [Text("Charge: ",
                              textAlign: TextAlign.left,
                            )],
                          ),
                        ],
                      ),
                    ],
                  ),


                ),
              ),

              Card(
                color: Colors.grey[300],
                elevation: 1.0,
                child: Container(

                  decoration: BoxDecoration(
                    // border: Border.all(
                    //     // color: Colors.white70,
                    //     width: 5.0,
                    //     style: BorderStyle.solid
                    // ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10.0,right: 10.0),
                  height: 120,

                  //
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction Type         ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height:8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Phone number            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction ID:            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                              children: [
                                Column(
                                  children: [
                                    Text("19/12/2022",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  children: [
                                    Text("5:00PM",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),

                              ]
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("1000 BDT",
                                textAlign: TextAlign.left,
                              ),


                            ],
                          ),

                          SizedBox(height: 10.0),

                          Row(
                            children: [Text("Charge: ",
                              textAlign: TextAlign.left,
                            )],
                          ),
                        ],
                      ),
                    ],
                  ),


                ),
              ),

              Card(
                color: Colors.grey[300],
                elevation: 1.0,
                child: Container(

                  decoration: BoxDecoration(
                    // border: Border.all(
                    //     // color: Colors.white70,
                    //     width: 5.0,
                    //     style: BorderStyle.solid
                    // ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10.0,right: 10.0),
                  height: 120,

                  //
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction Type         ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height:8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Phone number            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction ID:            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                              children: [
                                Column(
                                  children: [
                                    Text("19/12/2022",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  children: [
                                    Text("5:00PM",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),

                              ]
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("1000 BDT",
                                textAlign: TextAlign.left,
                              ),


                            ],
                          ),

                          SizedBox(height: 10.0),

                          Row(
                            children: [Text("Charge: ",
                              textAlign: TextAlign.left,
                            )],
                          ),
                        ],
                      ),
                    ],
                  ),


                ),
              ),

              Card(
                color: Colors.grey[300],
                elevation: 1.0,
                child: Container(

                  decoration: BoxDecoration(
                    // border: Border.all(
                    //     // color: Colors.white70,
                    //     width: 5.0,
                    //     style: BorderStyle.solid
                    // ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10.0,right: 10.0),
                  height: 120,

                  //
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction Type         ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height:8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Phone number            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction ID:            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                              children: [
                                Column(
                                  children: [
                                    Text("19/12/2022",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  children: [
                                    Text("5:00PM",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),

                              ]
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("1000 BDT",
                                textAlign: TextAlign.left,
                              ),


                            ],
                          ),

                          SizedBox(height: 10.0),

                          Row(
                            children: [Text("Charge: ",
                              textAlign: TextAlign.left,
                            )],
                          ),
                        ],
                      ),
                    ],
                  ),


                ),
              ),

              Card(
                color: Colors.grey[300],
                elevation: 1.0,
                child: Container(

                  decoration: BoxDecoration(
                    // border: Border.all(
                    //     // color: Colors.white70,
                    //     width: 5.0,
                    //     style: BorderStyle.solid
                    // ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10.0,right: 10.0),
                  height: 120,

                  //
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction Type         ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height:8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Phone number            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction ID:            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                              children: [
                                Column(
                                  children: [
                                    Text("19/12/2022",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  children: [
                                    Text("5:00PM",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),

                              ]
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("1000 BDT",
                                textAlign: TextAlign.left,
                              ),


                            ],
                          ),

                          SizedBox(height: 10.0),

                          Row(
                            children: [Text("Charge: ",
                              textAlign: TextAlign.left,
                            )],
                          ),
                        ],
                      ),
                    ],
                  ),


                ),
              ),

              Card(
                color: Colors.grey[300],
                elevation: 1.0,
                child: Container(

                  decoration: BoxDecoration(
                    // border: Border.all(
                    //     // color: Colors.white70,
                    //     width: 5.0,
                    //     style: BorderStyle.solid
                    // ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10.0,right: 10.0),
                  height: 120,

                  //
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction Type         ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height:8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Phone number            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text("Transaction ID:            ",
                                  // textAlign: TextAlign.left,
                                ),
                              ),



                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                              children: [
                                Column(
                                  children: [
                                    Text("19/12/2022",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  children: [
                                    Text("5:00PM",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),

                              ]
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("1000 BDT",
                                textAlign: TextAlign.left,
                              ),


                            ],
                          ),

                          SizedBox(height: 10.0),

                          Row(
                            children: [Text("Charge: ",
                              textAlign: TextAlign.left,
                            )],
                          ),
                        ],
                      ),
                    ],
                  ),


                ),
              ),

            ],
          )
        ),
      ),
    );
  }
}

