import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          Profile(),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Lorem ka khel" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
                  Text("Hala madrid" , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w400 , color: Colors.grey),)
                ],
              ),
            ),
          ),
         LoremRow(
           boxColor: Colors.yellow,
          child: Container(
           height: 30,width: 50,
           decoration: BoxDecoration(
               border: Border.all(color: Colors.white),
               borderRadius: BorderRadius.circular(5)
           ),
           child: Center(child: Icon(Icons.circle_outlined,color: Colors.white,size:10,),),
         ),),
          LoremRow(boxColor: Colors.green,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,width: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5)
                ),
              ),
              Container(
                height: 30,width: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5)
                ),
              )
            ],
          ),),
          LoremRow(boxColor: Colors.blueGrey,
            child: Text("_",style: TextStyle(fontSize: 50),),
          )
        ],
      )
    );
  }
}
