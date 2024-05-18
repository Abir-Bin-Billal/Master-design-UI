import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:master_design/screens/bottom_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize : Size(360 , 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: BottomBar(),
    );
  }
}
