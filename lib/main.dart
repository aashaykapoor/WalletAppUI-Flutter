import 'package:DribbleComplexUI/data.dart';
import 'package:DribbleComplexUI/widgets/cardsection.dart';
import 'package:DribbleComplexUI/widgets/expenses.dart';
import 'package:DribbleComplexUI/widgets/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(fontFamily: "Circular"),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(
            child: CardSection(),
          ),
          Expanded(
            child: ExpenseSection(),
          )
        ],
      ),
    );
  }
}
