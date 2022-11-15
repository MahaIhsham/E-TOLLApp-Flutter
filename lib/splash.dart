import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siginui/sigin.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {

    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => MyHomePage()
    )
    );
  }
  initScreen(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Container(
        width: 100.w,
        height: Adaptive.h(100),
        decoration: BoxDecoration(
          image: DecorationImage( image: AssetImage(
"image/dashboard/splash_new.png"
          ),
            fit: BoxFit.cover,

          ),
        ),
alignment: Alignment.center,
           child:Image.asset(
             'image/logo_new.png',
             width: 70.w,
             height: Adaptive.h(50),
           ),

           )


      ),

    );
  }
}
