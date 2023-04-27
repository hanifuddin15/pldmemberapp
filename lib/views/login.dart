import 'package:flutter/material.dart';
import 'package:practice1/login_model/login_api_repository.dart';
import 'package:practice1/login_model/login_response_model.dart';
import 'package:practice1/views/responsive_app_manager.dart';

import 'Dash_Board.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  // bool _password = false;
  final GlobalKey<FormState> _userKey = GlobalKey<FormState>();

  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _phoneNumber = '';
  String _password = '';
  bool _isObscure = true;
  LoginResponseModel? loginAPIresponse;
  void _onPhoneNumberChanged(String value) {
    setState(() {
      _phoneNumber = value;
    });
  }

  void _onPasswordChanged(String value) {
    setState(() {
      _password = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              SizedBox(
                height:
                    (50 / 896) * AppResponsiveManager.getDeviceHeight(context),
              ),
              //-------------------------------Logo---------------------------------------//
              Image.asset(
                'image/logo.png',
                width:
                    AppResponsiveManager.getDeviceWidth(context) * (151 / 414),
                height: AppResponsiveManager.getDeviceWidth(context) *
                    (151 / 414) *
                    (144 / 151),
              ),
              SizedBox(
                height:
                    (120 / 896) * AppResponsiveManager.getDeviceHeight(context),
              ),
              Form(
                key: _userKey,
                child: Column(
                  children: [
                    //------------------------------Text Box (Mobile no)-----------------------//
                    Container(
                      width: AppResponsiveManager.getDeviceWidth(context) *
                          (325 / 414),
                      height: AppResponsiveManager.getDeviceWidth(context) *
                          (325 / 414) *
                          (54 / 325),
                      margin: const EdgeInsets.only(
                        // top: 120.0,
                        left: 46.0,
                        right: 43.0,
                      ),
                      child: SizedBox(
                        // width: double.infinity,
                        // height: 60,
                        width: AppResponsiveManager.getDeviceWidth(context) *
                            (325 / 414),
                        height: AppResponsiveManager.getDeviceWidth(context) *
                            (325 / 414) *
                            (54 / 325),

                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: TextFormField(
                            controller: _numberController,
                            textAlign: TextAlign.left,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.number,
                            onChanged: _onPhoneNumberChanged,
                            maxLength: 11,
                            autofocus: false,
                            //------------------- Condition --------
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Phone Number can not be empty";
                              } else if (!RegExp(r'^\+?(88)?0?1[3456789]\d{8}$')
                                  .hasMatch(value)) {
                                return 'Enter a valid Phone number';
                              }
                            },
                            onSaved: (value) {
                              // Save the password value
                              _phoneNumber = value!;
                              print(value);
                            },

                            style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                            //------------------- Phone number input & Clear -------------//
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(56)),
                              ),
                              contentPadding: const EdgeInsets.fromLTRB(
                                  30.0, 10.0, 0.0, 5.0),
                              prefixIcon: const Icon(
                                Icons.ad_units_sharp,
                                color: Colors.black,
                                size: 18,
                              ),
                              labelText: 'ফোন নম্বর লিখুন',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              hintText: "০১*********",
                              hintStyle: const TextStyle(
                                  fontSize: 10,
                                  fontWeight:
                                      FontWeight.bold), //hint text style
                              labelStyle: const TextStyle(
                                  fontSize: 15, color: Colors.redAccent),
                              suffixIcon: _phoneNumber.isNotEmpty
                                  ? IconButton(
                                      iconSize: 15,
                                      onPressed: () {
                                        setState(() {
                                          _numberController.clear();
                                        });
                                      },
                                      icon: const Icon(Icons.clear),
                                      color: Colors.red,
                                    )
                                  : null,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(56.0),
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(124, 178, 66, 1),
                                    width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(56.0),
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(124, 178, 66, 1),
                                    width: 2.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //------------------------------Text Box (Password)-----------------------//

                    SizedBox(
                      height: (28 / 896) *
                          AppResponsiveManager.getDeviceHeight(context),
                    ),

                    Container(
                      width: AppResponsiveManager.getDeviceWidth(context) *
                          (325 / 414),
                      height: AppResponsiveManager.getDeviceWidth(context) *
                          (325 / 414) *
                          (54 / 325),
                      margin: const EdgeInsets.only(
                        left: 46.0,
                        right: 43.0,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 100,
                        // width: AppResponsiveManager.getDeviceWidth(context) *
                        //     (325 / 414),
                        // height: AppResponsiveManager.getDeviceWidth(context) *
                        //     (325 / 414) *
                        //     (54 / 325),
                        child: TextFormField(
                          maxLength: 6,

                          autofocus: true,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          obscureText: _isObscure,
                          onChanged: _onPasswordChanged,
                          controller: _passwordController,
                          //------------------- Condition --------
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^\d{1,6}$') //r'(^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,})+$'
                                    .hasMatch(value)) {
                              return "Enter valid password!";
                            }
                          },

                          style: const TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(56)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(56.0),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(124, 178, 66, 1),
                                  width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(56.0),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(124, 178, 66, 1),
                                  width: 2.0),
                            ),
                            contentPadding: const EdgeInsets.fromLTRB(
                                20.0, 10.0, 20.0, 30.0),
                            prefixIcon: const Icon(
                              Icons.lock,
                              size: 18,
                              color: Colors.black,
                            ),
                            labelText: "পাসওয়ার্ড লিখুন",
                            //  hintStyle: const TextStyle(
                            //       fontSize: 10,
                            //       fontWeight:
                            //           FontWeight.bold), //hint text style
                            labelStyle: const TextStyle(
                                fontSize: 15, color: Colors.redAccent),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            //hintText: "********",
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _password != _password;
                                });
                              },
                              child: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.red,
                                  size: 15,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //------------------------------ Log In Button ---------------------------//
                    SizedBox(
                      height: (28 / 896) *
                          AppResponsiveManager.getDeviceHeight(context),
                    ),
                    Container(
                        width: AppResponsiveManager.getDeviceWidth(context) *
                            (325 / 414),
                        height: AppResponsiveManager.getDeviceWidth(context) *
                            (325 / 414) *
                            (54 / 325),
                        margin: const EdgeInsets.only(
                          // top: 28.0,
                          left: 46.0,
                          right: 43.0,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    const MaterialStatePropertyAll<Color>(
                                        Color.fromRGBO(124, 178, 66, 1)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(56.0),
                                        side: const BorderSide(
                                            color: Colors.green)))),
                            child: const Text(
                              'লগইন',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            onPressed: () async {
                              var loginRepo = LoginAPIRepository(_userKey);
                              if (_userKey.currentState!.validate()) {
                                _userKey.currentState!.save();

                                if (_phoneNumber.isNotEmpty &&
                                    _password.isNotEmpty) {
                                  loginAPIresponse = await loginRepo
                                      .postAPICall(_phoneNumber, _password);
                                  print(_phoneNumber);
                                  print(_password);
                                }
                              }

                              if (loginAPIresponse!.StatusCode == 778 ||
                                  loginAPIresponse!.StatusCode == 779) {
                                // ignore: use_build_context_synchronously
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const DashBoard(),
                                    ));
                                print("successful");
                              } else {
                                print(loginAPIresponse!.StatusCode);
                              }
                              // if (_userKey.currentState!.validate()) {
                              //   // ignore: use_build_context_synchronously
                              //   Navigator.pushReplacement(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => const DashBoard(),
                              //       ));
                              // }

                              // ignore: use_build_context_synchronously
                              // Navigator.of(context).pushNamed("/DashBoard");
                              print('Log In');
                            },
                          ),
                        )),
                  ],
                ),
              ),
              //------------------------------Text---------------------------------------//
              SizedBox(
                height:
                    (28 / 896) * AppResponsiveManager.getDeviceHeight(context),
              ),
              const Text(
                'পাসওয়ার্ড রিসেট করুন ',
                style: TextStyle(
                    fontSize: 10.0, color: Color.fromRGBO(134, 142, 127, 1)),
              ),

              //-----------------------------Registration Button----------------------------//
              SizedBox(
                height:
                    (130 / 896) * AppResponsiveManager.getDeviceHeight(context),
              ),
              Container(
                  width: AppResponsiveManager.getDeviceWidth(context) *
                      (325 / 414),
                  height: AppResponsiveManager.getDeviceWidth(context) *
                      (325 / 414) *
                      (54 / 325),
                  margin: const EdgeInsets.only(
                    // top: 28.0,
                    left: 46.0,
                    right: 43.0,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll<Color>(
                                  Color.fromRGBO(124, 178, 66, 1)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(56.0),
                                      side: const BorderSide(
                                          color: Colors.green)))),
                      child: const Text(
                        'নিবন্ধন করুন',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              color: Colors.white,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  //--------------------- Logo + Back button ------------------
                                  Container(
                                    margin: const EdgeInsets.only(top: 10.0),
                                    child: ListTile(
                                        leading: Image.asset('image/logo.png'),
                                        trailing: TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop("/LogIn");
                                          },
                                          child: const Text(
                                            "বাতিল করুন",
                                            style: TextStyle(
                                              color: Colors.red,
                                            ),
                                          ),
                                        )),
                                  ),
                                  const Divider(
                                    height: 30,
                                    thickness: 1,
                                  ),
                                  const Text(
                                    "নিবন্ধন পূর্বশর্ত",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  const Divider(
                                    height: 30,
                                    thickness: 1,
                                  ),

                                  Container(
                                    alignment: Alignment.center,
                                    child: Image.asset('image/member.png'),
                                  ),

                                  Container(
                                      margin: const EdgeInsets.only(
                                        top: 80.0,
                                        left: 46.0,
                                        right: 43.0,
                                      ),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 50,
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
                                            'পরবর্তী',
                                            style: TextStyle(fontSize: 20.0),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushNamed("/OtpRequest");
                                            print('Log In');
                                          },
                                        ),
                                      )),
                                ],
                              ),
                            );
                          },
                        );
                        print('Pressed');
                      },
                      //Navigator.of(context).pushNamed("/RegMenu");
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
