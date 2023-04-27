import 'package:flutter/material.dart';

import 'Dash_Board.dart';

class ConfirmPin extends StatefulWidget {
  const ConfirmPin({Key? key}) : super(key: key);

  @override
  State<ConfirmPin> createState() => _ConfirmPinState();
}

class _ConfirmPinState extends State<ConfirmPin> {
  final _form = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//================================ App Bar ======================

      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),

//-------------------------- Title -----------------------------//
        title: Text(
          "পিন নির্ধারণ করুন",
          style: TextStyle(
            color: Color.fromRGBO(43, 47, 40, 1),
            fontSize: 15.0,
          ),
        ),

//--------------------Icon button--------------------------------//
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(134, 142, 127, 1),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("/WriteOTP");
          },
        ),
      ),

//================================== Body =========================

      body: SingleChildScrollView(
        child: Form(
          key: _form,
          child: Column(
            children: [
//--------------------------------- Text Field 1 -----------------
              Container(
                margin: const EdgeInsets.only(
                  top: 38.0,
                  left: 46.0,
                  right: 43.0,
                ),
                height: 54.0,
                child: TextFormField(
                  controller: _pass,
                  validator: (value) {
                    if (value!.isEmpty ||
                        RegExp(r'(^[0-9]{0,6})$').hasMatch(value!)) {
                      return 'Please enter a valid pin Number!';
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    labelText: "পিন প্রবেশ করুন",
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Colors.red,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
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

//------------------------------- Text Field 2 -----------------

              Container(
                margin: const EdgeInsets.only(
                  top: 48.0,
                  left: 46.0,
                  right: 43.0,
                ),
                height: 54.0,
                child: TextFormField(
                  controller: _confirmPass,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Empty';
                    }
                    if (value != _pass.text) {
                      return 'Pin does not Match!';
                    }
                    return null;
                  },
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    labelText: 'পিন নিশ্চিত করুন',
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
                    suffixIcon: const Icon(
                      Icons.visibility_off,
                      color: Colors.red,
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
//------------------------------ Button -----------------------
              Container(
                  margin: EdgeInsets.only(
                    top: 220.0,
                    left: 46.0,
                    right: 43.0,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromRGBO(124, 178, 66, 1)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(56.0),
                                      side: BorderSide(
                                          color: Color.fromRGBO(
                                              124, 178, 66, 1))))),
                      child: const Text(
                        'নিবন্ধন সম্পন্ন করুন',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DashBoard(),
                            ));
                        print('Pressed');

                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: Container(
                              child: Column(
                                children: [
                                  const Text(
                                    'নিবন্ধন সম্পন্ন',
                                    style: TextStyle(fontSize: 15.0),
                                    textAlign: TextAlign.center,
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(
                                        top: 55.0,
                                        left: 46.0,
                                        right: 43.0,
                                        bottom: 21.0,
                                      ),
                                      child: SizedBox(
                                        width: 193.0,
                                        height: 54,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  const MaterialStatePropertyAll<Color>(
                                                      Color.fromRGBO(
                                                          124, 178, 66, 1)),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(
                                                          56.0),
                                                      side: const BorderSide(
                                                          color: Colors.green)))),
                                          child: const Text(
                                            'নিশ্চিতকরণ বার্তা',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Color.fromRGBO(
                                                    43, 47, 40, 1)),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushNamed("/RegMenu");
                                            print('Log In');
                                          },
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'ঠিক আছে'),
                                child: const Text('ঠিক আছে'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
