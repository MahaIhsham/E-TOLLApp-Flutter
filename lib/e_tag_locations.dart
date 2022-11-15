import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siginui/dashboard.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class e_tag_locations extends StatefulWidget {

  const e_tag_locations({Key? key}) : super(key: key);

  @override
  State<e_tag_locations> createState() => _e_tag_locationsState();
}

class _e_tag_locationsState extends State<e_tag_locations> {

final ScrollController _scrollController = ScrollController();









  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType)
    {
      return MaterialApp(
          home: Scaffold(
              body: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,),
                  child: Column(
                      children: [
                        //app bar
                        Container(
                          alignment: Alignment.center,
                          height: Adaptive.h(12), // or 12.5.h
                          width: 100.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,),
                          child:
                          SafeArea(
                            child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Container(
                                alignment: Alignment.center,

                                child: IconButton(icon: Icon(Icons.arrow_back),

                                  onPressed: () =>
                                      Navigator.pop(context, false),
                                ),),
                              SizedBox(
                                width: 30,
                              ),
                              Container(alignment: Alignment.center,
                                child: Text("E-Tag Locations   ",
                                  style: TextStyle(color: Colors.grey.shade800,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800),
                                  textAlign: TextAlign.center,),)
                              , SizedBox(
                                width: 30,
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
                        //appbar finish
                        //text

                     Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15)),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 1,)
                            ),
                            height: Adaptive.h(88), // or 12.5.h
                            width: 100.w,
                            child:

                            SingleChildScrollView(
                                child:    Column(
                                children: [
                                  SizedBox(
                                    height: Adaptive.h(4),
                                  ),
                                  Container(
                                    child: Text(
                                      "Here all the list of all nearest Issuance \n"
                                          "Booth locations will be given from \n"
                                          "where eTags are issued",
                                      style:
                                      TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,


                                      ),
                                      textAlign: TextAlign.center,

                                    ),
                                  ),
//text container finish
                                  SizedBox(
                                    height: Adaptive.h(1.5),
                                  ),
                                  //grey container


                                  Container(
                                      margin: EdgeInsets.all(16),
                                      width: 100.w,
                                      height: Adaptive.h(60),

                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade100,
                                          borderRadius: BorderRadius.circular(
                                              20),
                                          border: Border.all(
                                            color: Colors.grey.shade100,

                                            width: 1,)
                                      ),


                                      child: Column(
                                          children: [

SizedBox(
  height: Adaptive.h(2),
),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start,
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: [
                                                SizedBox(
                                                  height: Adaptive.h(1.5),
                                                ),
                                                Row(

                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      width: 8.w,
                                                    ),
                                                    Text("Location",
                                                      style: TextStyle(

                                                          fontSize: 18
                                                      ),),
                                                    SizedBox(
                                                    // or 12.5.h
                                                      width: 40.w,
                                                    ),
                                                    Text("Distance",
                                                      style: TextStyle(

                                                          fontSize: 18
                                                      ),),

                                                    SizedBox(
                                                      width: 1.w,
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: Adaptive.h(1),
                                            ),

                                            Scrollbar(
                                              isAlwaysShown: true,
                                              controller: _scrollController,
                                              child:

                                              SizedBox(
                                                height: Adaptive.h(50),

                                                child:
                                                ListView(
                                                  scrollDirection: Axis
                                                      .vertical,
                                                  shrinkWrap: true,

                                                  controller: _scrollController,
                                                  children: [
                                                    //location row
                                                    Container(
                                                      margin:   EdgeInsets.symmetric(vertical: 1),
                                                      child:
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 8.w,
                                                          ),
                                                          Text(
                                                            "Ravi Toll Plaza",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),
                                                          Spacer( ),
                                                          Text("15KM",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),

                                                          Container(
                                                            width: 50,
                                                            height: 30,
                                                            child: ImageIcon(
                                                              AssetImage(
                                                                  "image/arrow_new.png"),
                                                              color: Colors
                                                                  .green,
                                                              size: 5,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      //location row finish
                                                    ),
                                                    SizedBox(
                                                      height: Adaptive.h(2),
                                                    ),
                                                    Container(


                                                      margin:   EdgeInsets.symmetric(vertical: 1),
                                                      child:
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 8.w,
                                                          ),
                                                          Text("Kasur Toll",
                                                            style: TextStyle(
                                                                fontSize: 18
                                                            ),),
                                                          Spacer( ),
                                                          Text("2KM",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),

                                                          Container(
                                                            width: 50,
                                                            height: 30,
                                                            child: ImageIcon(
                                                              AssetImage(
                                                                  "image/arrow_new.png"),
                                                              color: Colors
                                                                  .green,
                                                              size: 5,
                                                            ),
                                                          )

                                                        ],
                                                      ),
                                                      //location row finish
                                                    ),
                                                    SizedBox(
                                                      height: Adaptive.h(2),
                                                    ),
                                                    Container(
                                                      margin:   EdgeInsets.symmetric(vertical: 1),
                                                      child:
                                                      Row(


                                                        children: [
                                                          SizedBox(
                                                            width: 8.w,
                                                          ),
                                                          Text(
                                                            "Sahiwal Toll Plaza",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),
Spacer( ),

                                                          Text("5KM",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),

                                                          Container(
                                                            width: 50,
                                                            height: 30,
                                                            child: ImageIcon(
                                                              AssetImage(
                                                                  "image/arrow_new.png"),
                                                              color: Colors
                                                                  .green,
                                                              size: 5,
                                                            ),
                                                          )

                                                        ],
                                                      ),
                                                      //location row finish
                                                    ),
                                                    SizedBox(
                                                      height: Adaptive.h(2),
                                                    ),
                                                    Container(
                                                      margin:   EdgeInsets.symmetric(vertical: 1),
                                                      child:
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 8.w,
                                                          ),
                                                          Text(
                                                            "C&W Dept Office",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),
                                                        Spacer( ),
                                                          Text("3KM",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),

                                                          Container(
                                                            width: 50,
                                                            height: 30,
                                                            child: ImageIcon(
                                                              AssetImage(
                                                                  "image/arrow_new.png"),
                                                              color: Colors
                                                                  .green,
                                                              size: 5,
                                                            ),
                                                          )

                                                        ],
                                                      ),
                                                      //location row finish
                                                    ),
                                                    SizedBox(
                                                      height: Adaptive.h(2),
                                                    ),
                                                    Container(
                                                      margin:   EdgeInsets.symmetric(vertical: 1),
                                                      child:
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 8.w,
                                                          ),
                                                          Text(
                                                            "Ravi Toll Plaza",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),
                                                          Spacer(

                                                          ),


                                                          Text("0.5KM",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),

                                                          Container(
                                                            width: 50,
                                                            height: 30,
                                                            child: ImageIcon(
                                                              AssetImage(
                                                                  "image/arrow_new.png"),
                                                              color: Colors
                                                                  .green,
                                                              size: 5,
                                                            ),
                                                          )

                                                        ],
                                                      ),
                                                      //location row finish
                                                    ),

                                                    SizedBox(
                                                      height: Adaptive.h(2),
                                                    ),
                                                    Container(
                                                      margin:   EdgeInsets.symmetric(vertical: 1),
                                                      child:
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 8.w,
                                                          ),
                                                          Text("Kasur Toll",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),
                                                          Spacer( ),
                                                          Text("1KM",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),

                                                          Container(
                                                            width: 50,
                                                            height: 30,
                                                            child: ImageIcon(
                                                              AssetImage(
                                                                  "image/arrow_new.png"),
                                                              color: Colors
                                                                  .green,
                                                              size: 5,
                                                            ),
                                                          )

                                                        ],
                                                      ),
                                                      //location row finish
                                                    ),
                                                    SizedBox(
                                                      height: Adaptive.h(2),
                                                    ),
                                                    Container(
                                                      margin:   EdgeInsets.symmetric(vertical: 1),
                                                      child:
                                                      Row(


                                                        children: [
                                                          SizedBox(
                                                            width: 8.w,
                                                          ),
                                                          Text(
                                                            "Sahiwal Toll Plaza",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),
                                                     Spacer(

                                                     ),
                                                          Text("6KM",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),

                                                          Container(
                                                            width: 50,
                                                            height: 30,
                                                            child: ImageIcon(
                                                              AssetImage(
                                                                  "image/arrow_new.png"),
                                                              color: Colors
                                                                  .green,
                                                              size: 5,
                                                            ),
                                                          )

                                                        ],
                                                      ),
                                                      //location row finish
                                                    ),
                                                    SizedBox(
                                                      height: Adaptive.h(1),
                                                    ),
                                                    Container(
                                                      margin:   EdgeInsets.symmetric(vertical: 1),
                                                      child:
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 8.w,
                                                          ),
                                                          Text(
                                                            "C&W Dept Office",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),
                                                          Spacer(

                                                          ),
                                                          Text("15KM",
                                                            style: TextStyle(

                                                                fontSize: 18
                                                            ),),

                                                          Container(
                                                            width: 50,
                                                            height: 30,
                                                            child: ImageIcon(
                                                              AssetImage(
                                                                  "image/arrow_new.png"),
                                                              color: Colors
                                                                  .green,
                                                              size: 5,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: Adaptive.h(7),
                                                          )

                                                        ],
                                                      ),
                                                      //location row finish
                                                    ),

                                                  ],
                                                ),
                                              ),
                                            )
                                          ]
                                      )

                                  ),

SizedBox(
  height: Adaptive.h(5),
),
//button

                                  Container(margin: EdgeInsets.symmetric(horizontal: 16),
                                    width: double.infinity,
                                    height: 60,
                                      decoration: const BoxDecoration(

                                      ),

                                    child: ElevatedButton(

                                      onPressed: () {
                                        Navigator.push(context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  dashboard()),);
                                      },
                                      style:  ElevatedButton.styleFrom(
                                          primary:
                                          Color.fromRGBO(8, 141, 91, 1),
                                          fixedSize:  Size(300, 200),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                      ),


                                      child: Text("CLOSE", style: TextStyle(
                                        fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold)),


                                    ),
                                  ),
                                  SizedBox(
                                    height: Adaptive.h(8),
                                  )

                                ]
                            )
                        )
                     )

                      ]
                  )
              )
          )

      );
    }
    );
  }
}
