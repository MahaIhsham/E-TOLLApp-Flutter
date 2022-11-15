import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:siginui/psid.dart';
class recharge extends StatefulWidget {
  const recharge({Key? key}) : super(key: key);

  @override
  State<recharge> createState() => _rechargeState();
}

class _rechargeState extends State<recharge> {
  final _formKey = GlobalKey<FormState>();
  String? _error;
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType)
    {
      return MaterialApp(
          home: Scaffold(
            resizeToAvoidBottomInset: false,
            body:Form(
              key: _formKey,
           child:Container(
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
        child:SafeArea(
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
              child: Text(" Recharge E-Tag",
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
            SizedBox(
              height: Adaptive.h(2),
            ),

Container(
  width: 50.w,
  height: Adaptive.h(10),
  child: Image.asset(
    'image/card.png',
    height: Adaptive.h(10),
    width: 25.w,
  ),
),
SizedBox(
  height: Adaptive.h(1.5),
),
Container(
  width: 100.w,
 height: Adaptive.h(3),
 margin: EdgeInsets.symmetric(horizontal: 15),
  child: Text(
    "Select M-Tag",style: TextStyle(
    color: Color.fromRGBO(12, 205, 144, 1),
    fontSize: 17,
    fontWeight: FontWeight.w600,
  ),
  ),
),
            SizedBox(height: Adaptive.h(1),),
            Container(
              width: 100.w,
              height: Adaptive.h(3.5),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 1,
                      color: Colors.black45,
                      style: BorderStyle.solid),
                  top: BorderSide(
                      width: 1,
                      color: Colors.black45,
                      style: BorderStyle.solid),
                ),
              ),
              child: Text("11303097",style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),),
            ),
            SizedBox(
              height: Adaptive.h(4),
            ),
            Container(
              width: 100.w,
              height: Adaptive.h(3),
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Recharge Amount",style: TextStyle(
                color: Color.fromRGBO(12, 205, 144, 1),
                fontSize: 18,fontWeight: FontWeight.w600,
              ),
              ),
            ),
            SizedBox(
              height: Adaptive.h(1),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width:100.w,
                height: Adaptive.h(4),
                child:
            Row(
              children: [
                Container(  width: 15.w,
                  height: Adaptive.h(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300,
                      border: Border.all(
                          color: Colors.grey.shade300)
                  ),
                child:Text(
                  "100",style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold,
                  fontSize: 15
                ),
                ) ,),
                SizedBox(
               width: 3.w,
                ),
                Container(  width: 15.w,
                  height: Adaptive.h(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300,
                      border: Border.all(
                          color: Colors.grey.shade300)
                  ),
                  child:Text(
                    "250",style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                  ) ,), SizedBox(
                  width: 3.w,
                ),
               Container(  width: 15.w,
                  height: Adaptive.h(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300,
                      border: Border.all(
                          color: Colors.grey.shade300)
                  ),
                  child:Text(
                    "500",style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                  ) ,), SizedBox(
                  width: 3.w,
                ),
                Container(  width: 15.w,
                  height: Adaptive.h(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300,
                      border: Border.all(
                          color: Colors.grey.shade300)
                  ),
                  child:Text(
                    "750",style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                  ) ,),
                SizedBox(
                  width: 3.w,
                ),
                Container(  width: 15.w,
                  height: Adaptive.h(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300,
                      border: Border.all(
                          color: Colors.grey.shade300)
                  ),
                  child:Text(
                    "1000",style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                  ) ,)
              ],
            ),
            ),
Container(margin: EdgeInsets.all(15),
  child:
Column(
  children:[
            Container(
      child: TextFormField(
        autocorrect: true,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter
              .digitsOnly
        ],
        // Only numbers can be entered
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          contentPadding:
          const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 16.0),
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
          hintText: "Recharge Amount",
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
              fontSize: 17.sp,
              color: Colors.grey.shade700),
          focusedBorder:OutlineInputBorder(
              borderRadius:
              const BorderRadius
                  .all(
                Radius.circular(5.0),
              ),
              borderSide: BorderSide(
                color: Colors.black45,
              )),
          enabledBorder:
          OutlineInputBorder(
              borderRadius:
              const BorderRadius
                  .all(
                Radius.circular(5.0),
              ),
              borderSide: BorderSide(
                color: Colors.black45,
              )),
        ),
        validator: (value) {
          if (value == null ||
              value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
            ),

  Container(
              alignment: Alignment.centerLeft,
              child: Text("Enter Amount between PKR 500 and PKR 10,000",style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.w600),),
            )
            ]
)
),SizedBox(
              height: Adaptive.h(30),
            ),
Column(

  mainAxisAlignment: MainAxisAlignment.end,
  crossAxisAlignment: CrossAxisAlignment.end,
  children:[
            Container(

              margin: EdgeInsets.all(15),

              decoration: BoxDecoration(
                color: Color.fromRGBO(8, 141, 91, 1),
                borderRadius: BorderRadius.circular(5),
              ),
             width: 100.w,
              height: Adaptive.h(7),
              child: ElevatedButton(
                onPressed:   ()async {
                  if (!_formKey.currentState!.validate()) {
                    setState(() {
                      _error =
                      'Please provide a valid number/password combination';
                    });
                  } else {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                               psid()));
                  }

                }, style: ElevatedButton.styleFrom(
                primary:Color.fromRGBO(8, 141, 91, 1),
              ),
                child: Text("Proceed", style: TextStyle(
                  fontSize: 16, color: Colors.white,)),


),
            ),
    SizedBox(
      height: Adaptive.h(3),
    ),

]
),
          ]
        ),
      ),

                ]),
      )
              )




        )
        ,
      )





)
          

      );
    }
    );

  }
}
