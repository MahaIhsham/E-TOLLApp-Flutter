import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siginui/dashboard.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'dart:async';





class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  OtpFieldController otpController = OtpFieldController();
  final myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  StreamController<ErrorAnimationType>? errorController;
  String? _otpText;
  String? _error;
  TextEditingController textEditingController = TextEditingController();
  bool hasError = false;
  String currentText = "";
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _submit() {
    // you can write your
    // own code according to
    // whatever you want to submit;
  }
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                child: Column(children: [
                  Container(
                    alignment: Alignment.center,
                    width: 100.w,
                    height: Adaptive.h(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
SizedBox(
  width: 1.w,
),
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () => Navigator.pop(context, false),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            " OTP",
                            style: TextStyle(
                                color:Colors.grey.shade800,
                                fontSize: 24,
                                fontWeight: FontWeight.w800),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Form(
                    key:  _formKey,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey.shade200,
                            width: 1,
                          )),
                      width: 100.w,
                      height: Adaptive.h(90),
                      child: Column(children: [
                        SizedBox(
                          height: Adaptive.h(15), // or 12.5.h
                        ),
                        Container(
                            alignment: Alignment.center,
                            child: Text(
                              " Verification Code",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin:   EdgeInsets.all(16),

                            alignment: Alignment.center,
                            child: Text(
                              " We have sent the verification code on your Mobile Phone Number",
                              style:
                              TextStyle(
                                color: Colors.black,
                                fontSize: 16,

                              ),
                              textAlign: TextAlign.center,  )),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width:35.w,
                                height: Adaptive.h(7),
                                child: TextFormField(
                                  autocorrect: true,
                                  controller: myController,

                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  // Only numbers can be entered
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Number',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 8.0),
                                    label: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [],
                                    ),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                  ),

                                ),
                              ),
                              Container(
                                width: 15.w,
                                height: Adaptive.h(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(24, 197, 132,1),
                                    border: Border.all(
                                      color: Color.fromRGBO(24, 197, 132,1),
                                    )),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 19,
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.all(30),

                          child:PinCodeTextField(
                            appContext: context,
                            pastedTextStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                            length: 4,
                            obscureText: false,
                            blinkWhenObscuring: true,

                            validator: (v) {
                              if (v!.length < 3) {
                                return "I'm from validator";
                              } else {
                                return null;
                              }
                            },
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.circle,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 60,
                              fieldWidth: 70,
                              activeFillColor: Colors.grey.shade200,
                              selectedColor: Colors.blue,
                              inactiveColor: Colors.grey.shade300,
                              selectedFillColor: Colors.blue,
                              inactiveFillColor: Colors.grey.shade300,
                              errorBorderColor: Colors.red,
                              activeColor: Colors.grey.shade200,


                            ),

                            cursorColor: Colors.black,
                            animationDuration: const Duration(milliseconds: 300),
                            enableActiveFill: true,
                            errorAnimationController: errorController,
                            controller: textEditingController,
                            keyboardType: TextInputType.number,
                            boxShadows: const [
                              BoxShadow(
                                offset: Offset(0, 1),
                                color: Colors.black12,
                                blurRadius: 10,
                              )
                            ],
                            onCompleted: (v) {
                              debugPrint("Completed");
                            },
                            onChanged: (value) {
                              debugPrint(value);
                              setState(() {
                                currentText = value;
                              });
                            },
                            beforeTextPaste: (text) {
                              debugPrint("Allowing to paste $text");

                              return true;
                            },
                          )
                         ,

                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            hasError ? "*Please fill up all the cells properly" : "",
                            style: const TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: Adaptive.h(1), // or 12.5.h
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(8, 141, 91, 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: 100.w,
                          height: Adaptive.h(7),
                          child: ElevatedButton(
                            onPressed: ()  {
                              _formKey.currentState!.validate();
                              // conditions for validating
                              if (currentText.length != 4 ) {
                                errorController!.add(ErrorAnimationType
                                    .shake); // Triggering error shake animation
                                setState(() => hasError = true);
                              }
                              else {
                                setState(
                                      () {
                                    hasError = false;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder:
                                              (context) =>
                                              dashboard()),
                                    );
                                  },
                                );
                              }
                            }, style: ElevatedButton.styleFrom(
                            primary:Color.fromRGBO(8, 141, 91, 1),
                          ),
                            child: Text("Submit",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,

                                )),

                          ),
                        ),
                      ]),
                    ),
                  )
                ]))),
      );
    });
  }
}
