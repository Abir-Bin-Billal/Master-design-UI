import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:master_design/screens/profile_screen.dart';

import 'home_Screen.dart';
import 'notification_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  final List<Widget> pages =[
    const HomeScreen(),
    const NotificatinScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: pages[selectedIndex],
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: Container(

        height: 50,
        margin: EdgeInsets.only(left: 30 , right: 30 , bottom: 30),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){setState(() {
              selectedIndex = 0;
            });}, icon: selectedIndex == 0? Icon(Icons.home , color: Colors.blue,) :
            Icon(Icons.home , color: Colors.black,)),
            IconButton(onPressed: (){setState(() {
              selectedIndex = 1;
            });}, icon: selectedIndex == 1? Icon(Icons.notifications , color: Colors.blue,) :
      Icon(Icons.notifications , color: Colors.black,)),
            IconButton(onPressed: (){setState(() {
              selectedIndex = 2;
            });},  icon: selectedIndex == 2? Icon(Icons.settings , color: Colors.blue,) :
            Icon(Icons.settings , color: Colors.black,)),
          ],
        ),
      ),
    );
  }
}
