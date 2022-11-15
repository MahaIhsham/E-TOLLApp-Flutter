import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class e_tag extends StatefulWidget {
  const e_tag({Key? key}) : super(key: key);

  @override
  State<e_tag> createState() => _e_tagState();
}

class _e_tagState extends State<e_tag> {
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
                        child:
                        Column(

                            children: [
                              SafeArea(child:

                              Container(
                                alignment: Alignment.bottomCenter,
                                width: 100.w,
                                height: Adaptive.h(8),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,),
                                child: Row(
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
                                      child: Text("My E-Tag",
                                        style: TextStyle(color: Colors.grey.shade800,
                                            fontSize: 22,
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
                                      width: 0.5.w,
                                    ),

                                  ],
                                ),
                              ),
                              ),
                              SingleChildScrollView(child:
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
                                      height: Adaptive.h(88), // or 12.5.h
                                      width: 100.w,
                                      child:  ListView(
                                          children: [
                                            SizedBox(
                                              height: Adaptive.h(0.5),
                                            ),
                                            Container(
                                                margin: EdgeInsets.symmetric(horizontal: 18),
                                                padding: EdgeInsets.all(15),
                                                width: 100.w,
                                                height: Adaptive.h(16),

                                                decoration: BoxDecoration(
                                                    color: Colors.grey.shade200,

                                                    borderRadius: BorderRadius.circular(20),

                                                    border: Border.all(
                                                      color: Colors.grey.shade200,
                                                      width: 1,
                                                    )),
                                                child: Column(

                                                  children: [

                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 2.w,
                                                        ),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [

                                                            SizedBox(
                                                              height: Adaptive.h(1),
                                                            ),
                                                            Text("M-TAG 11303097",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("LEC487318A",style: TextStyle( color: Colors.black45,fontSize:14,),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("Car",style: TextStyle( color: Colors.black45,fontSize:14,),)
                                                          ],

                                                        ),
                                                        SizedBox(
                                                          width: 18.w,
                                                        ),
                                                        Row(
                                                          children:[
                                                            Column(
                                                              children: [
                                                                Text("Rs. 875",style: TextStyle(
                                                                  color: Colors.red,
                                                                  fontSize: 17,
                                                                  fontWeight: FontWeight.bold,
                                                                ),),
                                                                Text("Balance",style: TextStyle(
                                                                  color: Colors.black54,
                                                                  fontSize: 15,

                                                                ),)
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              width: 2.w,
                                                            ),
                                                            Container(
                                                              child: ImageIcon(
                                                                AssetImage("image/down_arrow.png"),
                                                                color: Colors.black,
                                                                size: 10,
                                                              ),
                                                            ),

                                                          ],
                                                        )
                                                      ],
                                                    ),

                                                  ],
                                                )
                                            ),
                                            SizedBox(
                                              height: Adaptive.h(3),
                                            ),

                                            Container(
                                                margin: EdgeInsets.symmetric(horizontal: 18),
                                                padding: EdgeInsets.all(15),
                                                width: 100.w,
                                                height: Adaptive.h(16),

                                                decoration: BoxDecoration(
                                                    color: Colors.grey.shade200,

                                                    borderRadius: BorderRadius.circular(20),

                                                    border: Border.all(
                                                      color: Colors.grey.shade200,
                                                      width: 1,
                                                    )),
                                                child: Column(

                                                  children: [

                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 2.w,
                                                        ),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [

                                                            SizedBox(
                                                              height: Adaptive.h(1),
                                                            ),
                                                            Text("M-TAG 11303097",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("LEC487318A",style: TextStyle( color: Colors.black45,fontSize:14,),),
                                                            SizedBox(
                                                              height: Adaptive.h(0.5),
                                                            ),
                                                            Text("Car",style: TextStyle( color: Colors.black45,fontSize:14,),)
                                                          ],

                                                        ),
                                                        SizedBox(
                                                          width: 18.w,
                                                        ),
                                                        Row(
                                                          children:[
                                                            Column(
                                                              children: [
                                                                Text("Rs. 875",style: TextStyle(
                                                                  color: Colors.red,
                                                                  fontSize: 17,
                                                                  fontWeight: FontWeight.bold,
                                                                ),),
                                                                Text("Balance",style: TextStyle(
                                                                  color: Colors.black54,
                                                                  fontSize: 15,


                                                                ),)
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              width: 2.w,
                                                            ),
                                                            Container(
                                                              child: ImageIcon(
                                                                AssetImage("image/down_arrow.png"),
                                                                color: Colors.black,
                                                                size: 10,
                                                              ),
                                                            ),

                                                          ],
                                                        )
                                                      ],
                                                    ),

                                                  ],
                                                )
                                            ),
                                          ]
                                      )
                                  )
                              )
                              )

                            ]

                        )
                    )


                ),
              ),
            ),
          );
        }
    );
  }
}

