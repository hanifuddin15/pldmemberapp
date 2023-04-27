import 'package:flutter/material.dart';

class OtpRequest extends StatefulWidget {
  const OtpRequest({Key? key}) : super(key: key);

  @override
  State<OtpRequest> createState() => _OtpRequestState();
}

class _OtpRequestState extends State<OtpRequest> {

  final TextEditingController _idcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

//================================== App Bar ===============================//
      appBar:
      AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255,0),

//-------------------------------- Title ----------------------------------//
        title: Text(
          "সমিতির সদস্য",
          style: TextStyle(
            color: Color.fromRGBO(43, 47, 40, 1),
            fontSize: 15.0,
          ),
        ),

//----------------------------- Icon Button -----------------------------//
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
            color: Color.fromRGBO(134, 142, 127, 1),
          ),
          onPressed: (){
            Navigator.of(context).pop("/LogIn");
          },
        ),
      ),


//=============================== Body =================================//
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [

//----------------------------- Image --------------------------------//
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40.0),
                child: Image.asset('image/AddUser.png'),
              ),

//---------------------------- Text Field ---------------------------//
              Container(
                margin: const EdgeInsets.only(
                  top: 120.0,
                  left: 46.0,
                  right: 43.0,
                ),
                child: TextFormField(
                  controller: _idcontroller,
                  style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon:  const Icon(
                      Icons.account_circle,
                      color: Colors.black,
                    ),
                    label: const Text("সদস্য আইডি লিখুন"),
                    suffixIcon: IconButton(
                      onPressed: _idcontroller.clear,
                      icon: const Icon(Icons.clear),
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

//---------------------------- Button ------------------------------//
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
                        'নিবন্ধন করুন',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/WriteOTP");
                        print('Pressed');
                      },
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}


