import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoremRow extends StatelessWidget {
  final Color boxColor;
  final dynamic child;
  const LoremRow({super.key, required this.boxColor, this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          height: 120.h, width: 100.w,
          decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: child
          ),
        ),
        Expanded(
            child:Container(
              padding: EdgeInsets.all(35),
              margin: EdgeInsets.only(top: 20.h,bottom: 25.h,right: 20.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r)
              ),
              child: Column(
                children: [
                  Text("Lorem ipsum" , style: TextStyle(fontWeight: FontWeight.w300),),
                  SizedBox(height: 10.h,),
                  Text("Y nada mas!Hala madrid" , style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            )
        )
      ],
    );
  }
}
