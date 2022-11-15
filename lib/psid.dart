import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class psid extends StatefulWidget {
  const psid({Key? key}) : super(key: key);

  @override
  State<psid> createState() => _psidState();
}

class _psidState extends State<psid> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType)
        {
          return MaterialApp(
              home: Scaffold(
                body: Container(
                    child: Container(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200),
                          child: Column(
                              children: [
                                 Container(
                                  alignment: Alignment.bottomCenter,
                                  width: 100.w,
                                  height: Adaptive.h(12),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,),
                                  child:
                                  SafeArea(child: Row(
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
                                        child: Text("PSID",
                                          style: TextStyle(color: Colors.grey.shade800,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,),)
                                      , SizedBox(
                                        width: 10.w,
                                      ),
                                      Container(

                                        alignment: Alignment.centerRight,
                                        child: Icon(Icons.grid_view, size: 30,),


                                      ),
                                      SizedBox(
                                        width: 1.w,
                                      ),

                                    ],
                                  ),
                               ),
                                ),


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
  child:ListView(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        width: 100,
        height: Adaptive.h(3),
        child: Text("PSID Details",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w900),),
      ),
      
    Container(
     padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),
          width: 100.w,
          height:Adaptive.h(28) ,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
        border:   Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
       children: [
         Container(
           alignment:Alignment.topLeft,
           child: Text("Vehicle Details",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 16),),
         ),
         SizedBox(height: Adaptive.h(0.5),),
         Container(
           alignment:Alignment.topLeft,
           child: Text("BWP-ZOO-3591",style: TextStyle(color: Colors.black45,fontSize: 14),),
         ),
         SizedBox(
           height: Adaptive.h(3),
         ),
         Container(
           alignment:Alignment.topLeft,
           child: Text("PSID No.",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
         ),
         SizedBox(height: Adaptive.h(0.5),),
         Row(
           children:[
         Container(
           alignment:Alignment.topLeft,
           child: Text("40162586854168954496",style: TextStyle(color: Colors.black45,fontSize: 14),),
         ),
             SizedBox(
               width: 1.w,
             ),
             Container(
               child: ImageIcon(
                 AssetImage('image/copy_psid.png'),
                 size: 15,
                 color: Colors.black45,
               ),
             )
             ]
         ),
         SizedBox(
           height:  Adaptive.h(3),

         ),
         Container(
           alignment:Alignment.topLeft,
           child: Text("Calculated Amount",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
         ),
         SizedBox(height: Adaptive.h(0.5),),
         Container(
           alignment:Alignment.topLeft,
           child: Text("Rs.1000",style: TextStyle(color: Colors.red,fontSize: 14,fontWeight: FontWeight.bold),),
         ),
       ],
      ),
      ),
SizedBox(height: Adaptive.h(1),),
      Container(
        width: 100.w,
        height: Adaptive.h(5),
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Text("Please note your unique 17 digits PSID, required to paytax",style: TextStyle(
          color: Colors.grey.shade600,fontSize: 16,
        ),),
      ),
SizedBox(height: Adaptive.h(2),),
Container(
  width: 100.w,
  height: Adaptive.h(3),
  margin: EdgeInsets.symmetric(horizontal: 15),
  child: Text("Pay Through",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
),
      SizedBox(height: Adaptive.h(3),),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 8,
              spreadRadius: 1,
              offset: Offset(0, 10),
            ),
          ],
        ),



        width: 100.w,
        height: Adaptive.h(8),
        child: Row(
          children: [
            Container(
              child: Text("Pay via ATM",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Spacer(

            ),
            Container(    width: 10.w,
                height: Adaptive.h(4),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300,
                    border: Border.all(
                        color: Colors.grey.shade300),

                ),
                child: Image.asset("image/arrow.png")
            )
          ],
        ),
      ),
      SizedBox(
        height: Adaptive.h(3),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 8,
              spreadRadius: 1,
              offset: Offset(0, 10),
            ),
          ],
        ),
        width: 100.w,
        height: Adaptive.h(8),
        child: Row(
          children: [
            Container(
              child: Text("Pay via internet/Mobile App",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Spacer(

            ),
            Container(    width: 10.w,
                height: Adaptive.h(4),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300,
                    border: Border.all(
                        color: Colors.grey.shade300)
                ),
                child: Image.asset("image/arrow.png")
            )
          ],
        ),
      ),
SizedBox(
  height: Adaptive.h(3),
),

      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 8,
              spreadRadius: 1,
              offset: Offset(0, 10),
            ),
          ],
        ),
        width: 100.w,
        height: Adaptive.h(26),
        child: Column(
          children:[Row(
          children: [
            Container(
              child: Text("Pay via 1 Link Member Bank...",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Spacer(

            ),
            Container(    width: 10.w,
                height: Adaptive.h(4),
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade300,
                border: Border.all(
                    color: Colors.grey.shade300)
            ),
              child: Image.asset("image/a1.png")
            )
          ],
        ),
            Divider(
              height: Adaptive.h(3),
              thickness: 1,
            ),
            Text("Please visit the nearest 1 Link Member bank branch along with print of PSID and asked the teller/Cashier to make the pament of leavy against PSID, under the option of GOPb"
,style: TextStyle(color: Colors.black45),
            )
  ]
        )
      )
,
      SizedBox(
        height: Adaptive.h(5),
      )
    ],
  ),
)



]
                        )
                ,
              )





)
              )
          )


          );
        }
    );
  }
}
