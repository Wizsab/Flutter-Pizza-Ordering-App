import 'package:flutter/material.dart';
import 'package:flutter_pizza_app/screens/home.dart';
import 'package:flutter_pizza_app/screens/order.dart';
import 'package:flutter_pizza_app/screens/review.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigtion',
      routes: <String, WidgetBuilder> {
        '/Home': (BuildContext context) => new Home(),
        '/Order': (BuildContext context) => new Order(),
        '/Review': (BuildContext context) => new Review(),
      },
      home: new Home(),
    );
  }
}