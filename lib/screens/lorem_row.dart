import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoremRow extends StatelessWidget {
  final Color boxColor;
  final dynamic child;
  const LoremRow({super.key, required this.boxColor, this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 120, width: 100,
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
              margin: EdgeInsets.only(top: 20,bottom: 25,right: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Text("Lorem ipsum" , style: TextStyle(fontWeight: FontWeight.w300),),
                  SizedBox(height: 10,),
                  Text("Y nada mas!Hala madrid" , style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            )
        )
      ],
    );
  }
}
