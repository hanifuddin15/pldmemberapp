import 'package:flutter/material.dart';

class WriteOTP extends StatefulWidget {
  const WriteOTP({Key? key}) : super(key: key);

  @override
  State<WriteOTP> createState() => _WriteOTPState();
}

class _WriteOTPState extends State<WriteOTP> {
  final TextEditingController _otpcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

//=========================== App Bar ============================//

        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),

//-------------------------- Title -----------------------------//
          title: const Text(
            "ওটিপি দিন",
            style: TextStyle(
              color: Color.fromRGBO(43, 47, 40, 1),
              fontSize: 15.0,
            ),
          ),

//--------------------Icon button--------------------------------//
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(134, 142, 127, 1),
            ),
            onPressed: () {
              Navigator.of(context).pop("/OtpRequest");
            },
          ),
        ),

//========================== Body ===============================//
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
//---------------------------- Image ----------------------------//
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 40.0),
                  child: Image.asset('image/Lock.png'),
                ),

//---------------------------- Text Box --------------------------//

                Container(
                  margin: const EdgeInsets.only(
                    top: 120.0,
                    left: 46.0,
                    right: 43.0,
                  ),
                  child: TextFormField(
                    controller: _otpcontroller,
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      labelText: 'ওটিপি দিন',
                      hintText: "৬১৬১",
                      suffixIcon: IconButton(
                        onPressed: _otpcontroller.clear,
                        icon: const Icon(Icons.clear),
                        color: Colors.red,
                      ),
                      prefixIcon: const Icon(
                        Icons.lock_open,
                        color: Colors.black,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(56.0),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(124, 178, 66, 1), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(56.0),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(124, 178, 66, 1), width: 2.0),
                      ),
                    ),
                  ),
                ),

//---------------------------- Button ---------------------------//
                Container(
                    margin: const EdgeInsets.only(
                      top: 78.0,
                      left: 46.0,
                      right: 43.0,
                    ),
                    child: SizedBox(
                      width: 325.0,
                      height: 54.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll<Color>(
                                    Color.fromRGBO(124, 178, 66, 1)),
                            shape: MaterialStateProperty
                                .all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(56.0),
                                        side: const BorderSide(
                                          color:
                                              Color.fromRGBO(124, 178, 66, 1),
                                        )))),
                        child: const Text(
                          'দাখিল করুন',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        onPressed: () {
//--------------------------------------- Alert Dialogue -------------------------
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  margin: const EdgeInsets.only(
                                    top: 140.0,
                                    right: 20.0,
                                    bottom: 30.0,
                                    left: 20.0,
                                  ),
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.only(
                                            top: 500.0,
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
                                                'পরবর্তী',
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pushNamed("/ConfirmPin");
                                                print('Pressed');
                                              },
                                            ),
                                          )
                                      ),


                                    ],
                                  ),
                                );
                              });
                          print('Pressed');
                        },
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
