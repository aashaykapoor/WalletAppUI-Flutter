import 'package:DribbleComplexUI/data.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.all(10),
              width: 250, child: Image.asset('images/mastercardlogo.png')),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
          
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text("**** **** ",style: TextStyle(fontSize: 20),),
                     Text("5680",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                  ],
                ),
                Text("PLATINUM CARD",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
               
              ],
            ),
          ),
        )
      ],
    );
  }
}
