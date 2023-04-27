import 'package:flutter/material.dart';
import 'package:practice1/views/demo.dart';

import './views/splash_screen.dart';
import './views/login.dart';
import './views/Dash_Board.dart';
import './views/member_OTP_request.dart';
import './views/Pin_confirm.dart';
import './views/write_otp.dart';

import './views/Loan_payment.dart';
import './views/Partial_lone_payment.dart';
import './views/save_transaction.dart';
import './views/LendenOtp.dart';

import './views/add_money.dart';
import './views/BankToWallet.dart';

import './views/Installment_OTP.dart';



import './views/Loan_payment.dart';

import './views/lenden_details.dart';
import './views/Inbox.dart';


////import './views/registration_menu.dart';
//import './views/OTP_Enter.dart';
//import './views/extended.dart';



void main() {
  runApp(MaterialApp(
    title: 'Palli Lenden',
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/SplashScreen' : (BuildContext context) => new SplashScreen(),
      '/LogIn': (BuildContext context) => new LogIn(),
      '/DashBoard' : (BuildContext context) => new DashBoard(),
      '/OtpRequest' : (BuildContext context) => new OtpRequest(),
      '/WriteOTP' : (BuildContext context) => new WriteOTP(),
      '/ConfirmPin' : (BuildContext context) => new ConfirmPin(),

      '/LoanPay' : (BuildContext context) => new LoanPay(),
      '/PartialLonePay' : (BuildContext context) => new PartialLonePay(),
      '/Transaction' : (BuildContext context) => new Transaction(),
      '/lendden_otp' : (BuildContext context) => new lendden_otp(),


      '/AddMoney' : (BuildContext context) => new AddMoney(),
      '/BankWallet' : (BuildContext context) => new BankWallet(),



      '/LoanPay' : (BuildContext context) => new LoanPay(),
      '/PartialLonePay' : (BuildContext context) => new PartialLonePay(),
      '/LendenDetails' : (BuildContext context) => new LendenDetails(),
      '/inbox' : (BuildContext context) => new inbox(),

      //'/CustomDemo' : (BuildContext context) => new CustomDemo(),



    },
  ));
}
