import 'package:DribbleComplexUI/data.dart';
import 'package:DribbleComplexUI/widgets/piechart.dart';
import 'package:flutter/material.dart';

class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    
      children: [
        Container(margin: EdgeInsets.symmetric(horizontal: 20), child: Text("Expenses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
        Row(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                   
                    children: expenses
                        .map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: pieColors[expenses.indexOf(e)],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    e["name"].toString(),
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                        ))
                        .toList(),
                  ),
                )),
            Expanded(flex: 6,child: PieChart()),
          ],
        ),
      ],
    );
  }
}
