import 'package:flutter/material.dart';
//My imports

import 'package:eShop/components/cart_products.dart';

class Cart  extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color.fromARGB(255, 251, 200, 0),
        title: Text('My Orders', style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),         
        ],
      ),

      body: new Cart_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text('Total:'),
                subtitle: new Text("\$230"),
              ),
            ),
            
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new MaterialButton( onPressed: (){},
                  child: new Text("Confirm Order", style: TextStyle(color: Colors.white),),
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}