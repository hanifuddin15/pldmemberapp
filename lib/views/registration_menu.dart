import 'package:flutter/material.dart';

class RegMenu extends StatelessWidget {
  const RegMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

//------------------------App Bar--------------------------------//
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            color: Color.fromRGBO(134, 142, 127, 1),
            onPressed: () {
              Navigator.of(context).pushNamed("/LogIn");
              print('Back to log in page');
            },
          ),
        ),

//--------------------------Body--------------------------------//
        //Code for buttons
        body: Container(
          child: Column(
            children: [
//--------------------------Button1---------------------------//
              Container(
                margin: const EdgeInsets.only(
                  top: 40.0,
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
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(56.0),
                                side: const BorderSide(
                                  color: Color.fromRGBO(124, 178, 66, 1),
                                )))),
                    child: const Text(
                      'সমিতির সদস্য',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                  ),
                )),

//--------------------------Button2---------------------------//
              Container(
                  margin: const EdgeInsets.only(
                    top: 60.0,
                    left: 46.0,
                    right: 43.0,
                  ),
                  child: SizedBox(
                    width: 325.0,
                    height: 54.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll<Color>(
                              Color.fromRGBO(238, 67, 57, 1)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(56.0),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(238, 67, 57, 1),
                                  )))),
                      child: const Text(
                        'নতুন সদস্য',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      onPressed: () {
                        print('Pressed');
                      },
                    ),
                  )),

//--------------------------Button3---------------------------//
              Container(
                  margin: const EdgeInsets.only(
                    top: 60.0,
                    left: 46.0,
                    right: 43.0,
                  ),
                  child: SizedBox(
                    width: 325.0,
                    height: 54.0,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(57.0),
                          ),
                          side: BorderSide(width: 1, color: Colors.green),

                      ),
                      child: Text(
                        'নির্বাচন করুন',
                        style: TextStyle(
                          color: Colors.black,
                            fontSize: 15.0),
                      ),
                      onPressed: () {
                        print('Pressed');
                      },
                    ),
                  )),

            ],
          ),
        )



        //Code for button2

      );

  }
}
