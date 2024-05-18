import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detail extends StatelessWidget {
  final Color boxColor;
  final Color nameColor;
  final String testName;
  final Color testColor;
  final String day;
  final Color dayColor;
  const Detail({super.key, required this.boxColor, required this.testName, required this.testColor, required this.day, required this.dayColor, required this.nameColor});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 190.h,width: 160.w,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(testName , style: TextStyle(fontSize: 15.sp , color: testColor),),
          Text("lorem\n ipsum" , style: TextStyle(fontSize: 20.sp , color: nameColor),),
          Text(day , style: TextStyle(fontSize: 15.sp , color: dayColor),),
        ],
      ),
    );
  }
}
