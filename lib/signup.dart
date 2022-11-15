import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:siginui/otp.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:siginui/signup.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType)
    {
      return MaterialApp(
        home: Scaffold(resizeToAvoidBottomInset: false,
          body: MyHomePage(),
        ),
      );
    }
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _submit() {
    // you can write your
    // own code according to

  }
  final _formKey = GlobalKey<FormState>();
  String? _error;
TextEditingController _nameController = TextEditingController();
var _nameError;


  bool rememberMe = false;

  // this bool will check rememberMe is checked
  bool showErrorMessage = false;
  bool newValue = true;


  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return MaterialApp
            (home: Scaffold
            (resizeToAvoidBottomInset: false,
            body:Form(

                key: _formKey,
            child:

            Container(
                color: Colors.grey.shade200,
                child:
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      width: 100.w,
                      height: Adaptive.h(30),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,


                      ),

                      child:

                      Container(

                          width: 60.w,
                          height: Adaptive.h(30),

                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,

                          ),
                          child: new Image.asset(
                            'image/image.png',
                            fit: BoxFit.fitWidth,
                          )
                      ),
                    ),


                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                    Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15)),
                            ),
                            width: 100.w,
                            height: Adaptive.h(70),
                            child:
                            SingleChildScrollView(
                              child:Container(
                                child:
                            Column(
                              children: [
                                Container(
                                  height: Adaptive.h(4), // or 12.5.h
                                  width: 25.w,

                                  alignment: Alignment.center,
                                  child: Text(
                                    "Sign Up", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,),
                                  ),
                                ),
                                Container(
                                  width: 10.w,
                                  height: Adaptive.h(1),
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
                                  height: Adaptive.h(3),
                                )
                                ,
                                Container(
                                  margin: EdgeInsets.all(5),

                                  child: TextFormField(
                                    controller: _nameController,

                                    autocorrect: true,
                                    keyboardType: TextInputType.text,


                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      contentPadding:
                                      const EdgeInsets.symmetric(
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
                                      hintText: "Name",
                                      hintStyle: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.black54),
                                      enabledBorder:
                                      OutlineInputBorder(
                                          borderRadius:
                                          const BorderRadius
                                              .all(
                                            Radius.circular(5.0),
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.grey.shade200,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          const BorderRadius
                                              .all(
                                            Radius.circular(5.0),
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.grey.shade200,
                                          )),

                                    ),
                                    validator: ( value) {
                                      if(value == null ||value.isEmpty|| !RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                                        return "Enter Correct Name";
                                      }
                                      else
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: Adaptive.h(1),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),

                                  height: Adaptive.h(6),
                                  // or 12.5.h
                                  width: 100.w,
                                  child: TextFormField(
                                    autocorrect: true,

                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    // Only numbers can be entered
                                    textAlign: TextAlign.left,

                                    validator: (value) {
                                      if(value == null ||value.isEmpty){
                                        //  r'^[0-9]{10}$' pattern plain match number with length 10
                                        return "Enter some Number";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      contentPadding:
                                      const EdgeInsets.symmetric(
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
                                      hintText: "CNIC Number",
                                      hintStyle: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.black54),
                                      enabledBorder:
                                      OutlineInputBorder(
                                          borderRadius:
                                          const BorderRadius
                                              .all(
                                            Radius.circular(5.0),
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.grey.shade200,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          const BorderRadius
                                              .all(
                                            Radius.circular(5.0),
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.grey.shade200,
                                          )),
                                    ),
                                  ),

                                ),
                                SizedBox(
                                  height: Adaptive.h(1),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),

                                  height: Adaptive.h(6),
                                  // or 12.5.h
                                  width: 100.w,
                                  child: TextFormField(
                                    autocorrect: true,

                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    // Only numbers can be entered
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      contentPadding:
                                      const EdgeInsets.symmetric(
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
                                      hintText: "Mobile Number",
                                      hintStyle: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.black54),
                                      enabledBorder:
                                      OutlineInputBorder(
                                          borderRadius:
                                          const BorderRadius
                                              .all(
                                            Radius.circular(5.0),
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.grey.shade200,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          const BorderRadius
                                              .all(
                                            Radius.circular(5.0),
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.grey.shade200,
                                          )),
                                    ),
                                    validator: (value) {
                                      if(value == null ||value.isEmpty|| !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(value)){
                                        //  r'^[0-9]{10}$' pattern plain match number with length 10
                                        return "Enter Correct Phone Number";
                                      }
                                      return null;
                                    },
                                  ),

                                ),

                                SizedBox(
                                  height: Adaptive.h(1),
                                ),
                                
                                
                                Row(
                                  children: [


                                    //SizedBox

                                    Checkbox(
                                      value: rememberMe,
                                      onChanged: (newvalue) {
                                        setState(() {
                                          setState(() => rememberMe = newValue);
                                        });
                                      },

                                    ),
                                    Text(
                                      'I agree to term & conditions ',
                                      style: TextStyle(fontSize: 15.0),
                                    ),


                                  ],

                                ),
                                showErrorMessage ?
                                Container(
                                  alignment: Alignment.center,
                                  width: 100.w,
                                    height: Adaptive.h(6),
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(80)
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text('Please accept the terms and conditions to proceed...')
                                    ),
                                ): Container(),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),

                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(8, 141, 91, 1),

                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  height: Adaptive.h(6),
                                  width: 100.w,
                                  child: ElevatedButton(
                                    onPressed:
                                        ()async {
                                       if (!_formKey.currentState!.validate()||rememberMe != true) {
                                             setState(() => showErrorMessage = true);


                                       } else {
                                         Navigator.of(context).push(
                                             MaterialPageRoute(
                                                 builder: (context) =>
                                                     otp()));
                                       }

                                     }, style: ElevatedButton.styleFrom(
                                    primary:Color.fromRGBO(8, 141, 91, 1),
                                  ),

                                    child: Text("Sign Up", style: TextStyle(
                                      fontSize: 16, color: Colors.white,)),
                                 ),
                                ),
                                SizedBox(
                                  height: Adaptive.h(5),
                                ),

                                Container(
                                  height: Adaptive.h(7), // or 12.5.h
                                  width: 100.w,

                                  child:
                                  Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .end,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: RichText(
                                            textAlign: TextAlign.end,
                                            text: TextSpan(children: <TextSpan>[

                                              TextSpan(
                                                  text: "Already have an account?",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold)),
                                              TextSpan(
                                                  text:'Sigin In',
                                                 recognizer: TapGestureRecognizer()..onTap= (){
                                                      Navigator.push(context,
                                                        MaterialPageRoute(
                                                            builder: (
                                                                context) =>
                                                                MyHomePage()),);
                                                    },
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        8, 141, 91, 1),
                                                    fontWeight: FontWeight.bold,

                                                  )),

                                            ]
                                            ),


                                          ),

                                        )
                                      ]),

                                )

                              ],
                            ),


                          ),

                   )
                    )
                        ]
                    )


                  ],
                )
            ),

          ),
            )
          );
        }
    );
  }
}
