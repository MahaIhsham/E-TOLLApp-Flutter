import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:siginui/dashboard.dart';
import 'package:siginui/forgot.dart';
import 'package:siginui/login/login_response.dart';
import 'package:siginui/signup.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: MyHomePage(),
    ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _error;
  bool _visiblePassword = false;
  bool _value = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
            home: Scaffold(
                resizeToAvoidBottomInset: false,
                body: Form(
                  key: _formKey,
                  child: Container(
                    color: Colors.grey.shade200,
                    child: Column(children: [
                      Container(
                        alignment: Alignment.topCenter,
                        height: Adaptive.h(30),
                        // or 12.5.h
                        width: 100.w,
                        decoration: BoxDecoration(),
                        child: Container(
                            alignment: Alignment.center,
                            height: Adaptive.h(30),
                            // or 12.5.h
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                            ),
                            child: new Image.asset(
                              'image/image.png',
                              fit: BoxFit.fitWidth,
                              height: Adaptive.h(30), // or 12.5.h
                              width: 60.w,
                            )),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15)),
                                ),
                                height: Adaptive.h(70),
                                // or 12.5.h
                                width: 100.w,
                                child: SingleChildScrollView(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: Adaptive.h(4), // or 12.5.h
                                          width: 40.w,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Sign In",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: Adaptive.h(1), // or 12.5.h
                                          width: 9.w,
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                  width: 3,
                                                  color: Colors.black,
                                                  style: BorderStyle.solid),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: Adaptive.h(4),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          child: TextFormField(
                                            controller: email,
                                            autocorrect: true,
                                            keyboardType: TextInputType.name,

                                            // Only numbers can be entered
                                            textAlign: TextAlign.left,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0,
                                                      horizontal: 8.0),
                                              label: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [],
                                              ),
                                              floatingLabelBehavior:
                                                  FloatingLabelBehavior.always,
                                              hintText: "Email Id",
                                              hintStyle: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.black54),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(5.0),
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey.shade200,
                                                  )),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(5.0),
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey.shade200,
                                                  )),
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter some   Text';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          child: TextFormField(
                                              controller: password,
                                              autocorrect: true,
                                              obscureText: true,
                                              textAlign: TextAlign.left,
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                              .symmetric(
                                                          vertical: 8.0,
                                                          horizontal: 8.0),
                                                  label: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [],
                                                  ),
                                                  floatingLabelBehavior:
                                                      FloatingLabelBehavior
                                                          .always,
                                                  hintText: "Password",
                                                  hintStyle: TextStyle(
                                                      fontSize: 16.sp,
                                                      color: Colors.black54),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .all(
                                                            Radius.circular(
                                                                5.0),
                                                          ),
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .grey.shade200,
                                                          )),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .all(
                                                            Radius.circular(
                                                                5.0),
                                                          ),
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .grey.shade200,
                                                          ))),
                                              validator: Validators.compose([
                                                Validators.required(
                                                    'Password is required'),
                                                /*Validators.patternString(
                                                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
                                                      'Invalid Password')*/
                                              ])),
                                        ),
                                        SizedBox(
                                          height: Adaptive.h(1),
                                        ),
                                        Container(
                                          alignment: Alignment.centerRight,
                                          child: RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        'Forgot your password? ',
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          forgot()),
                                                            );
                                                          },
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontSize: 13,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: Adaptive.h(4),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(8, 141, 91, 1),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          height: Adaptive.h(6),
                                          width: 100.w,
                                          child: isLoading
                                              ? const Center(
                                                  child: SizedBox(
                                                      height: 20,
                                                      width: 20,
                                                      child:
                                                          CircularProgressIndicator(
                                                        color: Colors.black,
                                                        strokeWidth: 2.0,
                                                      )))
                                              : ElevatedButton(
                                                  onPressed: () async {
                                                    if (!_formKey.currentState!.validate()) {
                                                      setState(() {
                                                        _error =
                                                        'Please provide a valid number/password combination';
                                                      });
                                                    } else {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) => dashboard()));
                                                    }
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Color.fromRGBO(
                                                        8, 141, 91, 1),
                                                  ),
                                                  child: Text("Sign In",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white,
                                                      )),
                                                ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                              bottom: BorderSide(
                                                width: 1,
                                                color: Colors.grey.shade300,
                                              ),
                                              top: BorderSide(
                                                width: 1,
                                                color: Colors.grey.shade300,
                                              ),
                                            ),
                                          ),
                                          width: 100.w,
                                          height: Adaptive.h(8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(" Biometric Login",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                  )),
                                              Container(
                                                alignment: Alignment.center,
                                                child: Switch(
                                                  activeColor: Color.fromRGBO(
                                                      8, 141, 91, 1),
                                                  inactiveThumbColor:
                                                      Colors.white,
                                                  value: _value,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _value = value;
                                                    });
                                                  },
                                                  activeThumbImage: AssetImage(
                                                      "image/tick.png"),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: Adaptive.h(10), // or 12.5.h
                                          width: 100.w,
                                          alignment: Alignment.bottomCenter,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: RichText(
                                                    textAlign: TextAlign.end,
                                                    text: TextSpan(children: <
                                                        TextSpan>[
                                                      TextSpan(
                                                          text:
                                                              "Don't have any account?",
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.black,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          )),
                                                      TextSpan(
                                                          text: ' Register now',
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap = () {
                                                                  Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                signup()),
                                                                  );
                                                                },
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            color:
                                                                Color.fromRGBO(
                                                                    8,
                                                                    141,
                                                                    91,
                                                                    1),
                                                          )),
                                                    ]),
                                                  ),
                                                )
                                              ]),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                          ])
                    ]),
                  ),
                )));
      },
    );
  }
}
