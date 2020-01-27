import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_pizza_app/code/pizza.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Review extends StatefulWidget {

  pizza _pizzaOrder;
  List<String> list = new List<String>();
  String total;

  Review({order: null}) {
    _pizzaOrder = order;

    list.add("Size: ${_pizzaOrder.size}");
    list.add(" ");
    list.add("Special: ${_pizzaOrder.special}");
    list.add(" ");
    list.add("Toppings:");
    list.add(" ");


    _pizzaOrder.toppings.forEach((String name, bool value){
      if(value) list.add(name);
    });
    total = list.toString();
  }


  @override
  _State createState() => new _State();
}

class _State extends State<Review> {
  pizza _pizzaOrder;
  List<String> list = new List<String>();
  String total;
  Review({order: null}) {
    _pizzaOrder = order;

    list.add("Size: ${_pizzaOrder.size}");
    list.add(" ");
    list.add("Special: ${_pizzaOrder.special}");
    list.add(" ");
    list.add("Toppings:");
    list.add(" ");


    _pizzaOrder.toppings.forEach((String name, bool value){
      if(value) list.add(name);
    });
    total = list.toString();
  }
  void _Topping() {
    setState((){
      Fluttertoast.showToast(
          msg: "Order is Already made!!! wait for 15 minutes your order to be delivered",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Review Pizza Order'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            new Text('Review your order', style: new TextStyle(fontWeight: FontWeight.bold),),
            new Expanded(
                child: new ListView.builder(
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index){
                      return new Text(list.elementAt(index));
                    }
                )
            ),
            new RaisedButton(child: new Text('Order now!!!'),onPressed: (){_Topping();},)
          ],
        ),
      ),
    );
  }
}