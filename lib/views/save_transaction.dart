import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
//=========================== App Bar ============================//

        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),

//-------------------------- Title -----------------------------//
          title: const Text(
            "লেনদেনের সারাংশ",
            style: TextStyle(
              color: Color.fromRGBO(43, 47, 40, 1),
              fontSize: 18.0,
            ),
          ),

//--------------------Icon button--------------------------------//
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(134, 142, 127, 1),
            ),
            onPressed: () {
              Navigator.of(context)
                  .pop("/PartialLonePay");
            },
          ),
        ),

//========================== Body ===============================//
        body: Column(
          children: [
            Card(
              elevation: 2.0,
              margin: const EdgeInsets.only(
                top: 60.0,
                left: 15.0,
                right: 15.0,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0)),
              child: Column(
                children: [
//------------------------------ First Green Box -----------------------------
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
                          borderRadius: BorderRadius.circular(8.0),
                          color: Color.fromRGBO(124, 178, 66, 1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                left: 20.0,
                              ),
                              child: (const Text(
                                "মোট লেনদেনের পরিমাণ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                                textAlign: TextAlign.center,
                              )),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 45.0,
                              ),
                              child: (const Text(
                                "৳ ১০০০০",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ],
                        ),
                      ),

//----------------------------------------------------------------------------
                  const Divider(
                    height: 30,
                    thickness: 2,
                    color: Color.fromRGBO(250, 250, 250, 1),
                  ),
//----------------------------- Second Box -----------------------------------
                      Container(
                        width: 320,
                        height: 105,
                        margin: const EdgeInsets.only(
                          top: 20.0,
                          left: 15.0,
                          right: 15.0,
                          bottom: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                              color: Color.fromRGBO(124, 178, 66, 1),
                              width: 2,
                          ),

                        ),

//---------------------------------------------------------------------------
                        child: Row(
                          children: [
//-------------------------------- Left Column -----------------------------
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 20.0,
                                    left: 25.0,
                                    right: 10.0,
                                  ),
                                  child: (const Text(
                                    "পরিশোধিত ঋণের পরিমাণ",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12.0),
                                    textAlign: TextAlign.left,
                                  )),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 10.0,
                                    right: 15,
                                  ),
                                  child: (const Text(
                                    "পল্লীলেনদেনের ফি",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12.0),
                                    textAlign: TextAlign.left,
                                  )),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 10.0,
                                    right: 60.0,

                                    bottom: 10.0,
                                  ),
                                  child: (const Text(
                                    "ভ্যাট ফি",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12.0),
                                    textAlign: TextAlign.left,
                                  )),
                                ),
                              ],
                            ),

//--------------------------------------------------------------------------
                            const VerticalDivider(
                              thickness: 2,
                              color: Color.fromRGBO(124, 178, 66, 1),
                              indent: 10,
                              endIndent: 10,
                            ),

//------------------------------ Right Column -----------------------------
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 20.0,
                                    left: 25.0,
                                    right: 10.0,
                                  ),
                                  child: (const Text(
                                    "৳ ১০০০০",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12.0),
                                    textAlign: TextAlign.left,
                                  )),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 10.0,
                                    left: 5.0,
                                  ),
                                  child: (const Text(
                                    "৳ ১০০",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12.0),
                                    textAlign: TextAlign.left,
                                  )),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 10.0,
                                    left: 5.0,
                                    bottom: 10.0,
                                  ),
                                  child: (const Text(
                                    "৳ ৫০",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12.0),
                                    textAlign: TextAlign.left,
                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ),

//----------------------------------------------------------------------------
                  const Divider(
                    height: 20,
                    thickness: 2,
                    color: Color.fromRGBO(250, 250, 250, 1),
                  ),

//------------------------------- Third Box ----------------------------------
                  Container(
                    width: 320,
                    height: 80,
                    margin: const EdgeInsets.only(
                      top: 10.0,
                      left: 15.0,
                      right: 15.0,
                      bottom: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Color.fromRGBO(124, 178, 66, 1),
                        width: 2,
                      ),

                    ),

//----------------------------------------------------------------------------
                    child: Row(
                      children: [
//------------------------------- Left Column -------------------------------
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 20.0,
                                left: 25.0,
                                right: 10.0,
                              ),
                              child: (const Text(
                                "সদস্য ওয়ালেট নম্বর",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12.0),
                                textAlign: TextAlign.left,
                              )),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10.0,
                                bottom: 10.0,
                              ),
                              child: (const Text(
                                "০১৮৩৩৭৫৫১০২",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12.0),
                                textAlign: TextAlign.left,
                              )),
                            ),
                          ],
                        ),

//------------------------------- Icon -------------------------------------
                           const Icon(
                            Icons.arrow_forward_outlined,
                            color: Color.fromRGBO(124, 178, 66, 1),
                          ),
//------------------------------- Right Column ---------------------------
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 20.0,
                                left: 25.0,
                                right: 10.0,
                              ),
                              child: (const Text(
                                "ঋণ পরিশোধ হিসাব নাম্বার",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12.0),
                                textAlign: TextAlign.left,
                              )),
                            ),

                            Container(
                              margin: const EdgeInsets.only(
                                top: 10.0,
                                left: 5.0,
                                bottom: 10.0,
                              ),
                              child: (const Text(
                                "২০২২****৯২৮২৯",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12.0),
                                textAlign: TextAlign.left,
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ],
              ),
            ),

//------------------------------ Button ----------------------------
            Container(
                margin: const EdgeInsets.only(
                  top: 130.0,
                  left: 46.0,
                  right: 43.0,
                ),
                child: SizedBox(
                  width: 325.0,
                  height: 54.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll<Color>(
                            Color.fromRGBO(124, 178, 66, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56.0),
                                    side: const BorderSide(
                                      color: Color.fromRGBO(124, 178, 66, 1),
                                    )))),
                    child: const Text(
                      'ওটিপি রিকুয়েস্ট করুন',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed("/lendden_otp");
                      print('Pressed');
                    },
                  ),
                )),
          ],
        ),
      );
  }
}
