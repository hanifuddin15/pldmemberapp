import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

   final String btnName;
   final VoidCallback callback;

   const CustomButton({Key? key,
     required this.btnName,
     required this.callback}) :
         super(key: key);




   @override
  Widget build(BuildContext context) {
    return  Container(
        margin: const EdgeInsets.only(
          top: 28.0,
          left: 46.0,
          right: 43.0,
        ),
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll<Color>(
                    Color.fromRGBO(124, 178, 66, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(56.0),
                        side: BorderSide(color: Colors.green)))),
            child: Text(
              btnName,
              style: const TextStyle(fontSize: 20.0),
            ),
            onPressed: () {
              callback();
            },
          ),
        ),
    );
  }
}
