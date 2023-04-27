import 'package:flutter/material.dart';

class AddMoney extends StatelessWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pallilenden',
      home: Scaffold(

//=========================== App Bar ============================//

          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),

//-------------------------- Title -----------------------------//
            title: const Text(
              "টাকা যোগ",
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
                Navigator.of(context).pop("/DashBoard");
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
                    padding: const EdgeInsets.only(left: 20, top: 40.0),
                    child: Image.asset("image/wallet.png"),
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
                              backgroundColor: const MaterialStatePropertyAll<Color>(
                                  Color.fromRGBO(124, 178, 66, 1)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(56.0),
                                      side: const BorderSide(
                                        color: Color.fromRGBO(124, 178, 66, 1),
                                      )))),
                          child: const Text(
                            "ব্যাংক হতে ওয়ালেট",
                            style: TextStyle(fontSize: 15.0),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed("/BankWallet");
                            print('Pressed');
                          },
                        ),
                      )),
                ],
              ),
            ),
          )),
    );
  }
}








