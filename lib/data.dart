import 'package:flutter/material.dart';

Color primaryColor = Color(0xFFCADCED);

List<BoxShadow> customShadow = [
  BoxShadow(
      color: Colors.white.withOpacity(0.5),
      blurRadius: 34,
      offset: Offset(-5, -5),
      spreadRadius: -5),
  BoxShadow(
      color: Colors.blue[900].withOpacity(.2),
      blurRadius: 20,
      offset: Offset(7, 7),
      spreadRadius: 2)
];

List expenses = [
  {"name": "Groceries", "amount": 500.0},
  {"name": "Movies", "amount": 200.0},
  {"name": "Rent", "amount": 700.0},
  {"name": "Travel","amount": 180.0},
  {"name": "Bills","amount": 400.0}
];

List pieColors = [Colors.indigo, Colors.orange, Colors.brown, Colors.red,Colors.green];
