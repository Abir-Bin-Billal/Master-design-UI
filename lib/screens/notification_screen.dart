import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_design/screens/DateRow.dart';
import 'package:master_design/screens/lorem_row.dart';

class NotificatinScreen extends StatefulWidget {
  const NotificatinScreen({super.key});

  @override
  State<NotificatinScreen> createState() => _NotificatinScreenState();
}

class _NotificatinScreenState extends State<NotificatinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(
          height: 300.h,
          child: Stack(
            children: [
              Container(
                height: 200.h,
                padding: EdgeInsets.symmetric(vertical: 20.h , horizontal: 20.w),
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.r),
                        bottomRight:Radius.circular(30.r))
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back_ios , color: Colors.white, size: 30.sp,),
                        Icon(Icons.search_outlined , color: Colors.white, size: 30.sp,)
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 100, left: -10,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 200.h, width: 325.w,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(40.r)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 80.h,width: 80.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle
                          ),
                          child: CircleAvatar(
                            radius: 30.r,
                            backgroundImage: NetworkImage("https://png.pngtree.com/png-vector/20191110/ourmid/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg")
                          ),
                        ),
                        Text("lorem Ipsum" , style: TextStyle(fontSize: 20.sp , fontWeight: FontWeight.bold),),
                        Text("Lorem ipsum" , style: TextStyle(fontSize: 13.sp , fontWeight: FontWeight.w300),)
                      ],
                    ),
                  )),
              Positioned(
                  bottom: -10,left: -10,
                  child: Container(
                    height: 120.h,width: 120.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: Center(
                      child: Container(
                        height: 80.h,width: 80.w,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ))
        
            ],
          ),
        ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Lorem ipsum" , style: TextStyle(fontSize: 30.sp , fontWeight: FontWeight.w900),)),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                       DateRow(
               boxColor: Colors.blueGrey ,
               text: "6-12",
               TextColor: Colors.blue,
                       ),
                  DateRow(
                    boxColor: Colors.purpleAccent ,
                    text: "8-12",
                    TextColor: Colors.black,
                  ),
                  DateRow(
                    boxColor: Colors.blue ,
                    text: "13-12",
                    TextColor: Colors.yellow,
                  ), DateRow(
                    boxColor: Colors.amber ,
                    text: "12-30",
                    TextColor: Colors.lightBlueAccent,
                  ),
                  DateRow(
                    boxColor: Colors.amberAccent ,
                    text: "12-14",
                    TextColor: Colors.black,
                  ),
              
              
                ],
              ),
            ),
            LoremRow(
                boxColor: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.cancel , color: Colors.yellow,),
                SizedBox(width: 5.w,),
                Text("Awaiting" , style: TextStyle(fontSize: 15.sp),)
              ],
            ),),
            LoremRow(
              boxColor: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.done_all , color: Colors.yellow,),
                  SizedBox(width: 5.w,),
                  Text("Done!" , style: TextStyle(fontSize: 15.sp),)
                ],
              ),)
          ],
        ),
      ),
    );
  }
}
