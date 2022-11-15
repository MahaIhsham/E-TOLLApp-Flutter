import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siginui/e_tag.dart';
import 'package:siginui/e_tag_locations.dart';
import 'package:siginui/recharge.dart';
import 'package:siginui/toll_history.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType)
    {
      return MaterialApp(
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 100.w,
                  height: Adaptive.h(12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,),
                  child:SafeArea(
                    child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 3,
                      ),

                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            border: Border.all(color: Colors.black)
                        ),
                        child: Icon(Icons.person),


                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(alignment: Alignment.center,
                        child: Text(" Dashboard", style: TextStyle(color: Colors
                            .grey.shade800, fontSize: 24, fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,),)
                      , SizedBox(
                        width: 50,
                      ),
                      Container(

                        alignment: Alignment.centerRight,
                        child: Icon(Icons.grid_view, size: 30,),


                      ),
                      SizedBox(
                        width: 10,
                      ),


                    ],
                  ),

                ),

                ),

                SingleChildScrollView(
                  child:Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight:  Radius.circular(20),
                          topLeft:  Radius.circular(20)  ),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.shade200,
                        width: 1,)
                  ),
                  width: 100.w,
                  height: Adaptive.h(88),
             child:     SingleChildScrollView (child: Container(  child: Column(
                    children: [
                      SizedBox(
                        height: Adaptive.h(1),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        margin: EdgeInsets.all(15),
               child:   ImageSlideshow(

                  /// Width of the [ImageSlideshow].
                  width: double.infinity,

                    /// Height of the [ImageSlideshow].
                    height: 200,

                    /// The page to show when first creating the [ImageSlideshow].
                    initialPage: 0,

                    /// The color to paint the indicator.
                    indicatorColor: Colors.blue,

                    /// The color to paint behind th indicator.
                    indicatorBackgroundColor: Colors.grey,

                    /// The widgets to display in the [ImageSlideshow].
                    /// Add the sample image file into the images folder
                    children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
               child:
                      Image.asset(
                        'image/t1.jpg',
                        fit: BoxFit.cover,
                      ),
                          ),
                     Container( decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10)
                     ),
                         child: Image.asset(
                        'image/t2.jpg',
                        fit: BoxFit.cover,
                      ),),
                      Container( decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                        child:
                      Image.asset(
                        'image/t3.jpg',
                        fit: BoxFit.cover,
                      ),
                      ),
                      Container( decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                        child:
                      Image.asset(
                        'image/t4.jpeg',
                        fit: BoxFit.cover,
                      ),),
                      Container( decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                        child:
                      Image.asset(
                        'image/t5.jpeg',
                        fit: BoxFit.cover,
                      ),),
                    ],

                    /// Called whenever the page in the center of the viewport changes.
                    onPageChanged: (value) {
                      print('Page changed: $value');
                    },

                    /// Auto scroll interval.
                    /// Do not auto scroll with null or 0.
                    autoPlayInterval: 3000,

                    /// Loops back to first slide.
                    isLoop: true,
                  ),

                      ),
                      
                      Container(
                        width: 100.w,
                        height: Adaptive.h(5),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "NHA Announces an Increase in Toll Tax for Lhr-Isb Motorway",style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade700,
                        ),
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.h(1),
                      ),
                      Container(
                        margin: EdgeInsets.all(16),
                        width: 100.w,
                        height: Adaptive.h(10),

                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey.shade100,

                              width: 1,)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [

                            Text("Balance ",
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 19,color: Colors.grey.shade800),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.black, fontSize: 36),
                                children: <TextSpan>[
                                  TextSpan(text: '1,944',
                                      style: TextStyle(
                                          color: Color.fromRGBO(8, 141, 91, 1),
                                          fontSize: 34,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(text:' PKR',
                                      style: TextStyle(
                                          color: Color.fromRGBO(8, 141, 91, 1),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400)),

                                ],
                              ),
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),

                              width: 20.w,
                              height: Adaptive.h(7),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.lightGreen,
                                  border: Border.all(color: Colors.lightGreen)

                              ),
                              child: Image.asset(
                                'image/new_add.png',
                                height: 20,
                                width: 50,


                              ),


                            ),

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(16),
                          child:
                          Row(
                    
                          children: [
                            Container(
alignment: Alignment.center,
                              width: 42.w,
                              height: Adaptive.h(22),

                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey.shade100,

                                    width: 1,)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => e_tag()));
                                    },
                                    padding: EdgeInsets.all(0),
                                    child: Image.asset(
                                      'image/e_tag_new.png',
                                      width: 13.w,
                                      height: Adaptive.h(10),


                                    ),
                                  ),
SizedBox(height: Adaptive.h(2.5),),
                                  Text("My E-TAG", style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.bold, fontSize: 17,
                                  ),
                                  textAlign: TextAlign.center,),
                                ],
                              ),
                            ),
SizedBox(
  width: 5.w,
),
                            Container(
                              width: 42.w,
                              height: Adaptive.h(22),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey.shade100,

                                    width: 1,)
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center
                                ,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  recharge()));
                                    },
                                    padding: EdgeInsets.all(0),
                                    child: Image.asset(
                                      'image/dashboard/recharge.png',
                                      width: 14.w,
                                      height: Adaptive.h(10),



                                    ),
                                  ),

                                  SizedBox(height: Adaptive.h(2.5),),

                                  Text("Recharge",
                                    style: TextStyle(color: Colors.grey.shade800,
                                      fontWeight: FontWeight.bold, fontSize: 17,

                                    ),
                                  textAlign: TextAlign.center,),
                                ],
                              ),
                            ),


                          ]
                      ),
             ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.all(16),
                        child:
                      Row(
                       
                          children: [
                            Container(

                              width: 42.w,
                              height: Adaptive.h(22),


                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey.shade100,

                                    width: 1,)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  toll_history()));
                                    },
                                    padding: EdgeInsets.all(0),
                                    child: Image.asset(
                                      'image/dashboard/toll_history.png',
                                      width: 20.w,
                                      height: Adaptive.h(10),




                                    ),
                                  ),
                                  SizedBox(height: Adaptive.h(2.5),),

                                  Text("Toll History",
                                    style: TextStyle(color: Colors.grey.shade800,
                                      fontWeight: FontWeight.bold, fontSize: 17,
                                    ),),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(

                              width: 42.w,
                              height: Adaptive.h(22),

                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey.shade100,

                                    width: 1,)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  e_tag_locations()));
                                    },
                                    padding: EdgeInsets.all(0),
                                    child: Image.asset(
                                      'image/dashboard/e_tag_locations.png',
                                      width: 17.w,
                                      height: Adaptive.h(10),

                                    ),
                                  ),
                                  SizedBox(height: Adaptive.h(2.5),),

                                  Text("E-TAG Locations",
                                    style: TextStyle(color: Colors.grey.shade800,
                                      fontWeight: FontWeight.bold, fontSize: 16,
                                    ),),
                                ],
                              ),
                            
                            
),

                          ]
                      ),
                      ),
                      SizedBox(
                        height: Adaptive.h(5),
                      )
                    ],
                  ),

                )
             )
                )
                ),
              ],
             )
                )


          ),



      );
    }
    );
  }
}

