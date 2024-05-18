

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateRow extends StatelessWidget {
  final Color boxColor;
  final text;
  final TextColor;
  const DateRow({super.key, required this.boxColor, this.text, this.TextColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 90, width: 90,
      decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text , style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100 , color: TextColor),),
          Text("MO-" , style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),),

        ],
      ),
    );
  }
}
