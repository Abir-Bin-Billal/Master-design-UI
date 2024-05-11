import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: Column(
        children: [
        SizedBox(
        height: 280,
        child: Stack(
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(vertical: 20 , horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight:Radius.circular(30))
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios , color: Colors.white, size: 30,),
                      Icon(Icons.search_outlined , color: Colors.white, size: 30,)
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
                top: 100, left: -10,
                child: Container(
                  padding: EdgeInsets.all(20),
                  height: 180, width: 450,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 80,width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage("https://png.pngtree.com/png-vector/20191110/ourmid/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg")
                        ),
                      ),
                      Text("lorem Ipsum" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                      Text("Lorem ipsum" , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w300),)
                    ],
                  ),
                )),
            Positioned(
                bottom: -10,left: -10,
                child: Container(
                  height: 120,width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  ),
                  child: Center(
                    child: Container(
                      height: 80,width: 80,
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
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Lorem ipsum" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w900),)),
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
              SizedBox(width: 5,),
              Text("Awaiting" , style: TextStyle(fontSize: 15),)
            ],
          ),),
          LoremRow(
            boxColor: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.done_all , color: Colors.yellow,),
                SizedBox(width: 5,),
                Text("Done!" , style: TextStyle(fontSize: 15),)
              ],
            ),)
        ],
      ),
    );
  }
}
