
import 'package:flutter/material.dart';
import 'package:siginui/signup.dart';
import 'package:siginui/splash.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


void main() {

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return MaterialApp(
            home: splash(),
          );
        }
    );

  }
}



