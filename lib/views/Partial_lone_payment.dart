import 'package:flutter/material.dart';

class PartialLonePay extends StatefulWidget {
  const PartialLonePay({Key? key}) : super(key: key);

  @override
  State<PartialLonePay> createState() => _PartialLonePayState();
}

class _PartialLonePayState extends State<PartialLonePay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
        title: Text(
          "মেম্বারের ঋণের কিস্তি পরিশোধ",
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
                .pop("/LoanPay");


          },
        ),
      ),

      body: SingleChildScrollView(
        // alignment: Alignment.center,
        child: Column(
          children: <Widget>[

            //here this container is working as row. and this is the first text box, which includes 3 portion together.
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
                  contentPadding: EdgeInsets.fromLTRB(53.0, 15.0, 20.0, 15.0),
                  // prefixIcon: Icon(
                  //   Icons.ad_units_sharp,
                  //   color: Colors.black,
                  // ),
                  labelText: "হিসাব নাম্বার",
                  hintText: "**************",
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.red,
                  ),
                  border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color.fromRGBO(124, 178, 66, 1), width: 325.0),
                      borderRadius: BorderRadius.circular(56.0)),
                ),
              ),
            ),
            // This portion for the 2nd box
            Container(
              margin: EdgeInsets.only(
                top: 28.0,
                left: 46.0,
                right: 43.0,
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  prefixIcon:   ImageIcon(
                    AssetImage('image/mobile_icon.png'),
                    color: Color.fromRGBO(134, 142, 127, 1),
                  ),
                  labelText: "মোবাইল নম্বর",
                  hintText: '০১৬********',
                  suffixIcon: Icon(
                    Icons.clear,
                    color: Colors.red,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 325.0),
                      borderRadius: BorderRadius.circular(56.0)),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 46,right: 46,top: 30, bottom: 30),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon:   ImageIcon(
                    AssetImage('image/taka.png'),
                    color: Color.fromRGBO(134, 142, 127, 1),
                  ),

                  border: UnderlineInputBorder(),
                  labelText: 'টাকার পরিমাণ',
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 46,right: 46, bottom: 60),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon:   ImageIcon(
                    AssetImage('image/lockIcon.png'),
                    color: Color.fromRGBO(134, 142, 127, 1),
                  ),

                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(124, 178, 66, 1)),
                  ),
                  labelText: 'লেনদেন সম্পূর্ণ করতে আপনার পিন লিখুন',
                ),
              ),
            ),

            CheckConditon(),

            Container(
                margin: EdgeInsets.only(
                  top: 70.0,
                  left: 46.0,
                  right: 43.0,
                ),
                child: SizedBox(
                  width: 325.0,
                  height: 54.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromRGBO(124, 178, 66, 1)),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(56.0),
                                side: BorderSide(
                                  color: Color.fromRGBO(124, 178, 66, 1),
                                )))),
                    child: Text(
                      'নিবন্ধন করুন',
                      style: TextStyle(fontSize: 15.0,color: Colors.white),
                    ),
                    onPressed:
                        () => //Navigator.pop(context, 'ঠিক আছে'),
                    Navigator.of(context)
                        .pushNamed("/Transaction"),
                  ),
                )),


          ],
        ),
      ),
    );
  }
}


class CheckConditon extends StatefulWidget {
  const CheckConditon({super.key});

  @override
  State<CheckConditon> createState() => _CheckConditonState();
}

class _CheckConditonState extends State<CheckConditon> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        // MaterialState.hovered,
        // MaterialState.focused,
      };

      return Colors.lightGreen;
    }

    return CheckboxListTile(
      contentPadding: EdgeInsets.only(left: 50.00),
      title: const Text("আমি পল্লীলেনদেনের শর্তাবলীতে সম্মত"),
      // secondary: Icon(Icons.beach_access),
      // controlAffinity: ListTileControlAffinity.platform,
      value: isChecked,
      onChanged: (bool? value){
        setState((){
          isChecked = value!;
        });
      },
      activeColor: Colors.lightGreen,

      checkColor: Colors.white,
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
