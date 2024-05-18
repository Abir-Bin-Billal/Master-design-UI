import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      child: Stack(
        children: [
          Container(
            height: 200.h,
            padding: EdgeInsets.symmetric(vertical: 20.h , horizontal: 20.w),
            decoration: BoxDecoration(
                color: Colors.yellow,
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
                      Text("Lorem" ,textAlign: TextAlign.center , style: TextStyle(fontSize: 30.sp , fontWeight: FontWeight.bold),),
                      Align(
                        child: Text("Madrid!madrid!madrid!Hala madrid!hala madrid!y nada masd",textAlign: TextAlign.end,style: TextStyle(
                            fontSize: 13.sp
                        ),),
                      )
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
    );
  }
}
