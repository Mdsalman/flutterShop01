import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var product_on_the_cart = [
    {
      "name": "Albaik Chicken",
      "picture": "Images/Food1.png",
      "price": 125,
      "quantity": 1
    },
    {
      "name": "Albaik Prawn",
      "picture": "Images/Food2.png",
      "price": 253,

      "quantity": 1
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_name: product_on_the_cart[index]["name"],
          //cart_prod_color: product_on_the_cart[index]["color"],
          cart_prod_qty: product_on_the_cart[index]["quantity"],
          //cart_prod_size: product_on_the_cart[index]["size"],
          cart_prod_price: product_on_the_cart[index]["price"],
          cart_prod_picture: product_on_the_cart[index]["picture"],
        );
      },
      itemCount: 2,
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  //final cart_prod_size;
  //final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      //this.cart_prod_size,
      //this.cart_prod_color,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_prod_picture, width: 70.0, height: 70.0,),
        title: new Text(
          cart_prod_name,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                
                
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$$cart_prod_price",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.red
              ),),
            )
          ],
        ),
       trailing: new Column(
         children: <Widget>[
           new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
           new Text(cart_prod_qty.toString()),
           new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
           
         ],
       ), 
      ),
    );
  }
}
