import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class toll_history extends StatefulWidget {
  const toll_history({Key? key}) : super(key: key);

  @override
  State<toll_history> createState() => _toll_historyState();
}

class _toll_historyState extends State<toll_history> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType)
        {
          return MaterialApp(
            home: Scaffold(
              body: Container(
                child: Container(
                    child:
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200),

                      child:  Column(

                            children: [


                              Container(
                                alignment: Alignment.bottomCenter,
                                width: 100.w,
                                height: Adaptive.h(12),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,),
                                child:
                                SafeArea
                                  (
                                  child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start
                                  ,
                                  children: [

                                    Container(
                                      alignment: Alignment.center,

                                      child: IconButton(
                                        icon: Icon(Icons.arrow_back),

                                        onPressed: () =>
                                            Navigator.pop(context, false),
                                      ),),
                                    SizedBox(
                                      // or 12.5.h
                                      width: 10.w,
                                    ),
                                    Container(alignment: Alignment.center,
                                      child: Text("Toll History",
                                        style: TextStyle(color: Colors.grey.shade800,
                                            fontSize: 22,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w800),
                                        textAlign: TextAlign.center,),)
                                    , SizedBox(
                                      width: 10.w,
                                    ),
                                    Container(

                                      alignment: Alignment.centerRight,
                                      child: Icon(Icons.grid_view, size: 30,),


                                    ),
SizedBox(
  width: 2.w,
),

                                  ],
                                ),
                              ),
                              ),
                              Container(
                                  child:

                                  Container(

                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topRight:  Radius.circular(15),
                                              topLeft:  Radius.circular(15)
                                          ),
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.grey.shade200,
                                            width: 1,)
                                      ),
                                      height: Adaptive.h(87), // or 12.5.h
                                      width: 100.w,
                                      child:  ListView(
                                          children: [

                                            Container(

                                                padding: EdgeInsets.all(10),
                                                width: 100.w,
                                                height: Adaptive.h(14),

                                                decoration: BoxDecoration(
                                                    color: Colors.white,

                                                    borderRadius: BorderRadius.circular(20),

                                                    ),
                                                child: Column(

                                                  children: [

                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 3.w,
                                                        ),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [

                                                            SizedBox(
                                                              height: Adaptive.h(1),
                                                            ),
                                                            Text("ABDULLAH GULL",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("M-TAG 11303097",style: TextStyle( color: Colors.grey.shade800,fontSize: 14),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("14/04/2022,06:00 pm",style: TextStyle( color: Colors.black45,fontSize: 13),)
                                                          ],

                                                        ),
                                                        Spacer(

                                                        ),
                                                        Row(
                                                          children:[
                                                            Column(
                                                              children: [
                                                                Text("- Rs. 50",style: TextStyle(
                                                                  color: Colors.red,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold,
                                                                ),),
                                                                Text("  Deduction",style: TextStyle(
                                                                  color: Colors.black45,
                                                                  fontSize: 14,
                                                                ),)
                                                              ],
                                                            ),

                                                          ],
                                                        )
                                                        ,
                                                        SizedBox(
                                                          width: 2.w,
                                                        )
                                                      ],
                                                    ),

                                                  ],
                                                )
                                            ),

                                            Container(

                                                padding: EdgeInsets.all(10),
                                                width: 100.w,
                                                height: Adaptive.h(14),

                                                decoration: BoxDecoration(
                                                  color: Colors.white,

                                                  borderRadius: BorderRadius.circular(20),

                                                ),
                                                child: Column(

                                                  children: [

                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 3.w,
                                                        ),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [

                                                            SizedBox(
                                                              height: Adaptive.h(1),
                                                            ),
                                                            Text("Sial Mor-Lahore",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("M-TAG 11303097",style: TextStyle( color: Colors.grey.shade800,fontSize: 14),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("10/04/2022,10:52 pm",style: TextStyle( color: Colors.black45,fontSize: 13),)
                                                          ],

                                                        ),
                                                        Spacer(

                                                        ),
                                                        Row(
                                                          children:[
                                                            Column(
                                                              children: [
                                                                Text("- Rs. 350",style: TextStyle(
                                                                  color: Colors.red,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold,
                                                                ),),
                                                                Text("    Deduction",style: TextStyle(
                                                                  color: Colors.black45,
                                                                  fontSize: 13,
                                                                ),)
                                                              ],
                                                            ),

                                                          ],
                                                        )
                                                        ,
                                                        SizedBox(
                                                          width: 2.w,
                                                        )
                                                      ],
                                                    ),

                                                  ],
                                                )
                                            ),
//second container finish
                                          //third

                                            Container(

                                                padding: EdgeInsets.all(10),
                                                width: 100.w,
                                                height: Adaptive.h(14),

                                                decoration: BoxDecoration(
                                                  color: Colors.white,

                                                  borderRadius: BorderRadius.circular(20),

                                                ),
                                                child: Column(

                                                  children: [

                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 3.w,
                                                        ),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [

                                                            SizedBox(
                                                              height: Adaptive.h(1),
                                                            ),
                                                            Text("E PAYMENT",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("M-TAG 11303097",style: TextStyle( color: Colors.grey.shade800,fontSize: 14),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("10/04/2022,08:56 pm",style: TextStyle( color: Colors.black45,fontSize: 13),)
                                                          ],

                                                        ),
                                                        Spacer(

                                                        ),
                                                        Row(
                                                          children:[
                                                            Column(
                                                              children: [
                                                                Text("+ Rs. 1000",style: TextStyle(
                                                                  color: Colors.greenAccent.shade700,
                                                                    fontSize: 15,
                                                                    fontWeight: FontWeight.bold,
                                                                ),),
                                                                Text("            Added",style: TextStyle(
                                                                  color: Colors.black45,
                                                                  fontSize: 13,
                                                                ),)
                                                              ],
                                                            ),

                                                          ],
                                                        )
                                                        ,
                                                        SizedBox(
                                                          width: 2.w,
                                                        )
                                                      ],
                                                    ),

                                                  ],
                                                )
                                            ),
                                            //third finish

                                            Container(

                                                padding: EdgeInsets.all(10),
                                                width: 100.w,
                                                height: Adaptive.h(14),

                                                decoration: BoxDecoration(
                                                  color: Colors.white,

                                                  borderRadius: BorderRadius.circular(20),

                                                ),
                                                child: Column(

                                                  children: [

                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 3.w,
                                                        ),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [

                                                            SizedBox(
                                                              height: Adaptive.h(1),
                                                            ),
                                                            Text("Lahore-Kot Momin",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("M-TAG 11303097",style: TextStyle( color: Colors.grey.shade800,fontSize: 14),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("09/04/2022,01:06 pm",style: TextStyle( color: Colors.black45,fontSize: 13),)
                                                          ],

                                                        ),
                                                        Spacer( ),
                                                        Row(
                                                          children:[
                                                            Column(
                                                              children: [
                                                                Text("- Rs. 410",style: TextStyle(
                                                                  color: Colors.red,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold,
                                                                ),),
                                                                Text("     Deduction",style: TextStyle(
                                                                  color: Colors.black45,
                                                                  fontSize: 13,
                                                                ),)
                                                              ],
                                                            ),

                                                          ],
                                                        )
                                                        ,
                                                        SizedBox(
                                                          width: 2.w,
                                                        )
                                                      ],
                                                    ),

                                                  ],
                                                )
                                            ),
                                            //foruth finish

                                            Container(

                                                padding: EdgeInsets.all(10),
                                                width: 100.w,
                                                height: Adaptive.h(14),

                                                decoration: BoxDecoration(
                                                  color: Colors.white,

                                                  borderRadius: BorderRadius.circular(20),

                                                ),
                                                child: Column(

                                                  children: [

                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 3.w,
                                                        ),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [

                                                            SizedBox(
                                                              height: Adaptive.h(1),
                                                            ),
                                                            Text("ABDULLAH GUL",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("M-TAG 11303097",style: TextStyle( color: Colors.grey.shade800,fontSize: 14),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("07/04/2022,06:13 pm",style: TextStyle( color: Colors.black45,fontSize: 13),)
                                                          ],

                                                        ),
                                                        Spacer(

                                                        ),
                                                        Row(
                                                          children:[
                                                            Column(
                                                              children: [
                                                                Text("- Rs. 50",style: TextStyle(
                                                                  color: Colors.red,
                                                                    fontSize: 15,
                                                                    fontWeight: FontWeight.bold,
                                                                ),),
                                                                Text("  Deduction",style: TextStyle(
                                                                  color: Colors.black45,
                                                                  fontSize: 13,
                                                                ),)
                                                              ],
                                                            ),

                                                          ],
                                                        )
                                                        ,
                                                        SizedBox(
                                                          width: 2.w,
                                                        )
                                                      ],
                                                    ),

                                                  ],
                                                )
                                            ),
                                            //five finish

                                            Container(

                                                padding: EdgeInsets.all(10),
                                                width: 100.w,
                                                height: Adaptive.h(14),

                                                decoration: BoxDecoration(
                                                  color: Colors.white,

                                                  borderRadius: BorderRadius.circular(20),

                                                ),
                                                child: Column(

                                                  children: [

                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 3.w,
                                                        ),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [

                                                            SizedBox(
                                                              height: Adaptive.h(1),
                                                            ),
                                                            Text("KAMAHA",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("M-TAG 11303097",style: TextStyle( color: Colors.grey.shade800,fontSize: 14),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("22/03/2022,01:25 pm",style: TextStyle( color: Colors.black45,fontSize: 13),)
                                                          ],

                                                        ),
                                                        Spacer(

                                                        ),
                                                        Row(
                                                          children:[
                                                            Column(
                                                              children: [
                                                                Text("- Rs. 50",style: TextStyle(
                                                                  color: Colors.red,
                                                                    fontSize: 15,
                                                                    fontWeight: FontWeight.bold,
                                                                ),),
                                                                Text("Deduction",style: TextStyle(
                                                                  color: Colors.black45,
                                                                  fontSize: 13,
                                                                ),),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 2.w,
                                                        ),
                                                      ],
                                                    ),

                                                  ],
                                                )
                                            ),
                                            //six finish

                                            Container(

                                                padding: EdgeInsets.all(10),
                                                width: 100.w,
                                                height: Adaptive.h(14),

                                                decoration: BoxDecoration(
                                                  color: Colors.white,

                                                  borderRadius: BorderRadius.circular(20),

                                                ),
                                                child: Column(

                                                  children: [

                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 3.w,
                                                        ),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [

                                                            SizedBox(
                                                              height: Adaptive.h(1),
                                                            ),
                                                            Text("KHAYABAN-E-AMEN",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("M-TAG 11303097",style: TextStyle( color: Colors.grey.shade800,fontSize: 14),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("27/03/2022,10:06 Am",style: TextStyle( color: Colors.black45,fontSize: 13),)
                                                          ],

                                                        ),
                                                       Spacer(

                                                       ),
                                                        Row(
                                                          children:[
                                                            Column(
                                                              children: [
                                                                Text("- Rs. 50",style: TextStyle(
                                                                  color: Colors.red,
                                                                    fontSize: 15,
                                                                    fontWeight: FontWeight.bold,
                                                                ),),
                                                                Text("Deduction",style: TextStyle(
                                                                  color: Colors.black45,
                                                                  fontSize: 13,
                                                                ),),

                                                              ],

                                                            ),

                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 2.w,
                                                        )
                                                      ],
                                                    ),

                                                  ],
                                                )
                                            ),
                                            //seven finish




                                          ]
                                      )
                                  )
                                    )
                                  ]
                              )
                    )

                )


              )
                        )

          );
        }
    );
  }
}

