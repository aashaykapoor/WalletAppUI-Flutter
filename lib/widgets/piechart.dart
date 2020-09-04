import 'dart:math';

import 'package:DribbleComplexUI/data.dart';
import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 14),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          shape: BoxShape.circle, boxShadow: customShadow, color: primaryColor),
      child: Stack(
        children: [
          CustomPaint(
            child: Container(
              
            ),
            
            foregroundPainter: PieChartPainter(),
          ),
          Center(
            child: Container(
              child: Center(child: Text("\$1500 ",style: TextStyle(fontWeight: FontWeight.bold),)),
              padding: EdgeInsets.all(10),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: customShadow,
                  color: primaryColor),
            ),
          )
        ],
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 60;

     double total=0;
     expenses.forEach((element) {total+=element['amount'];});
  var start=-pi/2;
     for(int i=0;i<expenses.length;i++){
       var currentExpense=expenses[i];
       var sweepRadian=currentExpense['amount']/total*2*pi;
       paint.color=pieColors[i];
       canvas.drawArc(Rect.fromCircle(center: center,radius: radius), start, sweepRadian, false, paint);
       start+=sweepRadian;
     } 
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
