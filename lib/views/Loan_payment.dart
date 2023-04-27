import 'package:flutter/material.dart';

class LoanPay extends StatelessWidget {
  const LoanPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pallilenden',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromRGBO(255, 255, 255, 0),
          title: Text(
            "ঋণ পরিশোধ",
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
                  .pushNamed("/DashBoard");
            },
          ),
        ),

        body: SingleChildScrollView( // this single child scroll view remove the padding error during typing the text.
          child:  Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                //this portion for the first text box
                Container(
                    margin: EdgeInsets.only(
                      top: 37.0,
                      left: 44.0,
                      right: 45.0,
                    ),
                    child: SizedBox(
                      width: 325.0,
                      height: 54.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Color.fromRGBO(124, 178, 66, 1);
                                }
                                //<-- SEE HERE
                                return null; // Defer to the widget's default.
                              },
                            ),
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromRGBO(247, 247, 247, 1)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56.0),
                                    side: BorderSide(
                                      color: Color.fromRGBO(124, 178, 66, 1),
                                    )))),
                        child: Text(
                          'মেম্বারের ঋণের কিস্তি পরিশোধ',
                          style: TextStyle(fontSize: 15.0,color: Color.fromRGBO(43, 47, 40, 1) ),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed("/PartialLonePay");
                          print('Pressed');
                        },
                      ),
                    )),

                Container(
                    margin: EdgeInsets.only(
                      top: 20.0,
                      left: 44.0,
                      right: 45.0,
                    ),
                    child: SizedBox(
                      width: 325.0,
                      height: 54.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color.fromRGBO(124, 178, 66, 1); //<-- SEE HERE
                                return null; // Defer to the widget's default.
                              },
                            ),
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromRGBO(247, 247, 247, 1)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56.0),
                                    side: BorderSide(
                                      color: Color.fromRGBO(124, 178, 66, 1),
                                    )))),
                        child: Text(
                          'মেম্বারের  সমিতির ঋণ পরিশোধ',
                          style: TextStyle(fontSize: 15.0,color: Color.fromRGBO(43, 47, 40, 1) ),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      ),
                    )),

                Container(
                    margin: EdgeInsets.only(
                      top: 20.0,
                      left: 44.0,
                      right: 45.0,
                    ),
                    child: SizedBox(
                      width: 325.0,
                      height: 54.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color.fromRGBO(124, 178, 66, 1); //<-- SEE HERE
                                return null; // Defer to the widget's default.
                              },
                            ),
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromRGBO(247, 247, 247, 1)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56.0),
                                    side: BorderSide(
                                      color: Color.fromRGBO(124, 178, 66, 1),
                                    )))),
                        child: Text(
                          'মেম্বারের ক্ষুদ্র ঋণের কিস্তি পরিশোধ',
                          style: TextStyle(fontSize: 15.0,color: Color.fromRGBO(43, 47, 40, 1) ),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      ),
                    )),

                Container(
                    margin: EdgeInsets.only(
                      top: 20.0,
                      left: 44.0,
                      right: 45.0,
                    ),
                    child: SizedBox(
                      width: 325.0,
                      height: 54.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color.fromRGBO(124, 178, 66, 1); //<-- SEE HERE
                                return null; // Defer to the widget's default.
                              },
                            ),
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromRGBO(247, 247, 247, 1)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56.0),
                                    side: BorderSide(
                                      color: Color.fromRGBO(124, 178, 66, 1),
                                    )))),
                        child: Text(
                          'মেম্বারের ক্ষুদ্র উদ্যোক্তা ঋণ পরিশোধ',
                          style: TextStyle(fontSize: 15.0,color: Color.fromRGBO(43, 47, 40, 1) ),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      ),
                    )),

                Container(
                    margin: EdgeInsets.only(
                      top: 20.0,
                      left: 44.0,
                      right: 45.0,
                    ),
                    child: SizedBox(
                      width: 325.0,
                      height: 54.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color.fromRGBO(124, 178, 66, 1); //<-- SEE HERE
                                return null; // Defer to the widget's default.
                              },
                            ),
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromRGBO(247, 247, 247, 1)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56.0),
                                    side: BorderSide(
                                      color: Color.fromRGBO(124, 178, 66, 1),
                                    )))),
                        child: Text(
                          'মেম্বারের ক্ষুদ্র ঋণ (বন) পরিশোধ',
                          style: TextStyle(fontSize: 15.0,color: Color.fromRGBO(43, 47, 40, 1) ),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      ),
                    )),

                Container(
                    margin: EdgeInsets.only(
                      top: 20.0,
                      left: 44.0,
                      right: 45.0,
                    ),
                    child: SizedBox(
                      width: 325.0,
                      height: 54.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color.fromRGBO(124, 178, 66, 1); //<-- SEE HERE
                                return null; // Defer to the widget's default.
                              },
                            ),
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromRGBO(247, 247, 247, 1)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56.0),
                                    side: BorderSide(
                                      color: Color.fromRGBO(124, 178, 66, 1),
                                    )))),
                        child: Text(
                          'মেম্বারের কর্মসৃজন ঋণ পরিশোধ',
                          style: TextStyle(fontSize: 15.0,color: Color.fromRGBO(43, 47, 40, 1) ),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      ),
                    )),

                Container(
                    margin: EdgeInsets.only(
                      top: 20.0,
                      left: 44.0,
                      right: 45.0,
                    ),
                    child: SizedBox(
                      width: 325.0,
                      height: 54.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color.fromRGBO(124, 178, 66, 1); //<-- SEE HERE
                                return null; // Defer to the widget's default.
                              },
                            ),
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromRGBO(247, 247, 247, 1)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56.0),
                                    side: BorderSide(
                                      color: Color.fromRGBO(124, 178, 66, 1),
                                    )))),
                        child: Text(
                          'মেম্বারের ক্ষুদ্র ঋণ (পি এস বি) পরিশোধ',
                          style: TextStyle(fontSize: 15.0,color: Color.fromRGBO(43, 47, 40, 1) ),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      ),
                    )),

                Container(
                    margin: EdgeInsets.only(
                      top: 20.0,
                      left: 44.0,
                      right: 45.0,
                    ),
                    child: SizedBox(
                      width: 325.0,
                      height: 54.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color.fromRGBO(124, 178, 66, 1); //<-- SEE HERE
                                return null; // Defer to the widget's default.
                              },
                            ),
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromRGBO(247, 247, 247, 1)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56.0),
                                    side: BorderSide(
                                      color: Color.fromRGBO(124, 178, 66, 1),
                                    )))),
                        child: Text(
                          'মেম্বারের শস্য গোলা ঋণ পরিশোধ',
                          style: TextStyle(fontSize: 15.0,color: Color.fromRGBO(43, 47, 40, 1) ),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
