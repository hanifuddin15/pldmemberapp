import 'package:flutter/material.dart';

import 'Dash_Board.dart';

class lendden_otp extends StatelessWidget {
  const lendden_otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
        title: Text(
          "ওটিপি দিন",
          style: TextStyle(
            color: Color.fromRGBO(43, 47, 40, 1),
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
                .pop("/Transaction");
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              // this portion for adding the image
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40.0),
                child: Image.asset('image/Lock.png'),
              ),

              // text field for giving otp
              Container(
                margin: EdgeInsets.only(
                  top: 120.0,
                  left: 46.0,
                  right: 43.0,
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: ImageIcon(
                      AssetImage('image/lockIcon.png'),
                      color: Color.fromRGBO(134, 142, 127, 1),
                    ),
                    hintText: "ওটিপি দিন",
                    suffixIcon: Icon(
                      Icons.clear,
                      color: Colors.red,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightGreen, width: 325.0),
                        borderRadius: BorderRadius.circular(56.0)),
                  ),
                ),
              ),

              //Elavated button to complete lenden
              Container(
                margin: EdgeInsets.only(
                  top: 78.0,
                  left: 46.0,
                  right: 43.0,
                ),
                child: SizedBox(
                    width: 327.0,
                    height: 54.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromRGBO(124, 178, 66, 1)),
                          shape: MaterialStateProperty
                              .all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(56.0),
                                  side: BorderSide(
                                    color:
                                    Color.fromRGBO(124, 178, 66, 1),
                                  )))),
                      child: Text(
                        'লেনদেন সম্পন্ন',
                        style: TextStyle(fontSize: 15.0),
                      ),


                      onPressed: () {
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) =>
                            DashBoard(),));


                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) =>
                              AlertDialog(
                                title: Container(
                                  child: Column(
                                    children: [

                                      //This portion for the bill pop up after clicking the elaveted button
                                      Container(
                                        margin: EdgeInsets.only(top: 10.0),
                                        child: ListTile(

                                          //Top left image
                                            leading: Image.asset(
                                                'image/loan_return.png'),

                                            //top right text button
                                            trailing: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                "রশিদ",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            )),
                                      ),

                                      // this is the divider
                                      const Divider(
                                        height: 30,
                                        thickness: 1,
                                      ),

                                      // a text field after the divider
                                      const Text(
                                        "আপনার লেনদেন টি সফল হয়েছে !",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),

                                      //Card for showing various information
                                      // here atfirst taking a card, then inside that taking a column. where fulll card is a column, then inside column taking children. A container to describe margin and all, and a child row. Then inside that row taking 2 column, 1 for the left column and the other for the right column. and inside these 2 colulmn there are multiple container, which works as row here and show the ouptut.
                                      Card(
                                        elevation: 1.0,
                                        margin: const EdgeInsets.only(
                                          top: 20.0,
                                          left: 8.0,
                                          right: 8.0,
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(14.0)),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 320,
                                              height: 230,
                                              margin: const EdgeInsets.only(
                                                top: 2.0,
                                                left: 1.0,
                                                right: 1.0,
                                                bottom: 15,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: Color.fromRGBO(
                                                      124, 178, 66, 1),
                                                  width: 1,
                                                ),
                                              ),

//---------------------------------------------------------------------------
                                              child: Row(
                                                children: [
//-------------------------------- Left Column -----------------------------
                                                  Column(
                                                    children: [
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 20.0,
                                                          // left: 10.0,
                                                          right: 25.0,
                                                        ),
                                                        child: (const Text(
                                                          "টাকা প্রদানের তারিখ",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 10.0,
                                                          right: 25,
                                                        ),
                                                        child: (const Text(
                                                          "সদস্য ওয়ালেট নম্বর",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 10.0,
                                                          right: 45.0,
                                                          bottom: 10.0,
                                                        ),
                                                        child: (const Text(
                                                          "লেনদেন নাম্বার",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 10.0,
                                                          right: 30.0,
                                                          bottom: 10.0,
                                                        ),
                                                        child: (const Text(
                                                          "ব্যাংক হিসাব নাম্বার",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 10.0,
                                                          right: 40.0,
                                                          bottom: 10.0,
                                                        ),
                                                        child: (const Text(
                                                          "টাকার পরিমাণ",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 10.0,
                                                          left: 25,
                                                          right: 35.0,
                                                          bottom: 10.0,
                                                        ),
                                                        child: (const Text(
                                                          "পল্লীলেনদেনের ফি",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 10.0,
                                                          right: 65.0,
                                                          bottom: 10.0,
                                                        ),
                                                        child: (const Text(
                                                          "ভ্যাট ফি",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                    ],
                                                  ),

//--------------------------------------------------------------------------
                                                  const VerticalDivider(
                                                    thickness: 2,
                                                    color: Color.fromRGBO(
                                                        124, 178, 66, 1),
                                                    indent: 10,
                                                    endIndent: 10,
                                                  ),

//------------------------------ Right Column -----------------------------
                                                  Column(
                                                    children: [
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 20.0,
                                                          left: 10.0,
                                                          right: 10.0,
                                                        ),
                                                        child: (const Text(
                                                          "০৩/০৮/২০২২",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 10.0,
                                                          left: 7.0,
                                                        ),
                                                        child: (const Text(
                                                          "০১৮৩৩৭৫৫১০২",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 10.0,
                                                          left: 5.0,
                                                          bottom: 10.0,
                                                        ),
                                                        child: (const Text(
                                                          "৮২৭২৮২৭২৮৭",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 10.0,
                                                          left: 7.0,
                                                          bottom: 10.0,
                                                        ),
                                                        child: (const Text(
                                                          "২০২২****৯২৮২৯",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 10.0,
                                                          // left: 5.0,
                                                          right: 20.0,
                                                          bottom: 10.0,
                                                        ),
                                                        child: (const Text(
                                                          "৳ ১০০০০",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 10.0,
                                                          left: 5.0,
                                                          right: 40.0,
                                                          bottom: 10.0,
                                                        ),
                                                        child: (const Text(
                                                          "৳ ০০",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                      Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                          top: 10.0,
                                                          left: 5.0,
                                                          right: 40.0,
                                                          bottom: 10.0,
                                                        ),
                                                        child: (const Text(
                                                          "৳ ০০",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey,
                                                              fontSize: 10.0),
                                                          textAlign: TextAlign
                                                              .left,
                                                        )),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 320,
                                              height: 60,
                                              margin: const EdgeInsets.only(
                                                top: 31.0,
                                                left: 15.0,
                                                right: 15.0,
                                                bottom: 15,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                                color:
                                                Color.fromRGBO(124, 178, 66, 1),
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: const EdgeInsets
                                                        .only(
                                                      left: 20.0,
                                                    ),
                                                    child: (const Text(
                                                      "মোট লেনদেনের পরিমাণ",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10.0),
                                                      textAlign: TextAlign
                                                          .center,
                                                    )),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets
                                                        .only(
                                                      left: 45.0,
                                                    ),
                                                    child: (const Text(
                                                      "৳ ১০০০০",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10.0),
                                                      textAlign: TextAlign
                                                          .center,
                                                    )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //here action widget to add the actin buttons
                                actions: <Widget>[
                                  FloatingActionButton(
                                    elevation: 0,
                                    onPressed: () {
                                      // Add your onPressed code here!
                                    },
                                    backgroundColor: Colors.white,
                                    child: const Icon(Icons.download,
                                        color: Color.fromRGBO(124, 178, 66, 1)),
                                  ),

                                  TextButton(
                                    onPressed:
                                        () {//Navigator.pop(context, 'ঠিক আছে'),
                                        Navigator.pushReplacement(
                                            context, MaterialPageRoute(builder: (context) =>
                                            DashBoard(),));
                                    },
                                    // child: const Text('ঠিক আছে'),
                                    child: const Icon(Icons.home,
                                        color: Color.fromRGBO(124, 178, 66, 1)),
                                  ),

                                ],
                              ),


                        );
                      },
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
