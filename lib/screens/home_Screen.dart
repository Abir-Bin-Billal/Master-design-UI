import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_design/screens/lorem_row.dart';
import 'package:master_design/screens/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Profile(),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Lorem ka khel" , style: TextStyle(fontSize: 25.sp , fontWeight: FontWeight.bold),),
                      Text("Hala madrid" , style: TextStyle(fontSize: 15.sp , fontWeight: FontWeight.w400 , color: Colors.grey),)
                    ],
                  ),
                ),
              ),
            ),
           LoremRow(
             boxColor: Colors.yellow,
            child: Container(
             height: 30.h,width: 50.w,
             decoration: BoxDecoration(
                 border: Border.all(color: Colors.white),
                 borderRadius: BorderRadius.circular(5.r)
             ),
             child: Center(child: Icon(Icons.circle_outlined,color: Colors.white,size:10,),),
           ),),
            LoremRow(boxColor: Colors.green,
        
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30.h,width: 30.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5.r)
                  ),
                ),
                Container(
                  height: 30.h,width: 30.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.r)
                  ),
                )
              ],
            ),),
            LoremRow(boxColor: Colors.blueGrey,
              child: Text("_",style: TextStyle(fontSize: 50.sp),),
            )
          ],
        ),
      )
    );
  }
}
