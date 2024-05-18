import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_design/screens/details.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 240.h,
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
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(left: 100),
                          height: 100.h,
                          width: 250.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Spacer(),
                              Text("You are family now" , style: TextStyle(fontSize: 20.sp , color: Colors.white),),
                              SizedBox(height: 5.h,),
                              Text("Mitchel B" , style: TextStyle(fontSize: 35.sp , color: Colors.deepOrangeAccent),)
                            ],
                          ),
                        )
        
        
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 5.h,
                      child: Container(
                        height: 100.h,width: 100.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                        child: Center(
                          child: Container(
                            height: 60.h,width: 60.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage("https://i1.sndcdn.com/artworks-000489101841-l2qat0-t500x500.jpg"))
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(height: 50,),
                    Detail(
                        boxColor: Colors.orange,
                        testName: "Covid test",
                        testColor: Colors.white,
                        day: "Today", dayColor: Colors.white,
                        nameColor: Colors.white),
                    SizedBox(height: 20.h,),
                    Detail(
                        boxColor: Colors.white,
                        testName: "Fever",
                        testColor: Colors.black,
                        day: "Over due",
                        dayColor: Colors.black,
                        nameColor: Colors.black),
                  ],
                ),
                Column(
                  children: [
                    Detail(
                        boxColor: Colors.white,
                        testName: "isolation",
                        testColor: Colors.black,
                        day: "important",
                        dayColor: Colors.orange,
                        nameColor: Colors.black),
                    SizedBox(height: 20.h,),
                    Detail(
                        boxColor: Colors.blueAccent,
                        testName: "Get a job!",
                        testColor: Colors.white,
                        day: "Tomorrow",
                        dayColor: Colors.white,
                        nameColor: Colors.white),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
