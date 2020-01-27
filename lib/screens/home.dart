import 'package:flutter/material.dart';
import 'package:flutter_pizza_app/screens/order.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('Pizza Ordering App Demo'),),
        body: new Center(
          child:  new Container(
            padding: new EdgeInsets.all(16.0),
            child: new Column(
              children: <Widget>[
                new Image.asset('images/pizza.png'),
                new RaisedButton(
                    child: new Text('Order A Pizza!!!!'),
                    onPressed: (){Navigator.of(context).pushNamed('/Order');}
                )
              ],
            ),
          ),
        )
    );
  }
}