import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Stack(
        children: [
          Container(
            height: 200,
            padding: EdgeInsets.symmetric(vertical: 20 , horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.yellow,
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
                Spacer(),
                Container(
                  margin: EdgeInsets.only(left: 250),
                  height: 100,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Lorem" ,textAlign: TextAlign.center , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
                      Text("Madrid!madrid!madrid!Hala madrid!hala madrid!y nada masd",textAlign: TextAlign.end,style: TextStyle(
                          fontSize: 13
                      ),)
                    ],
                  ),
                )


              ],
            ),
          ),
          Positioned(
              bottom: 5,
              child: Container(
                height: 100,width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                ),
                child: Center(
                  child: Container(
                    height: 60,width: 60,
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
