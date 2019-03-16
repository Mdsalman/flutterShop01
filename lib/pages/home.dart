// import 'package:flutter/material.dart';
// //import 'package:layouts_flutter/chat_item_screen.dart';
// //import 'package:layouts_flutter/card_screen.dart';
// //import 'package:layouts_flutter/hotel_card_screen.dart';
// //import 'card_item.dart';
// import 'cart.dart';
// import 'package:eShop/components/horizontal_listview.dart';
// import 'login_page.dart';



// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text(
//           "Hungry Station",
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Color.fromARGB(255, 251, 200, 0),
//         iconTheme: IconThemeData(color: Colors.black),
//         actions: <Widget>[
//           new IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {},
//           ),
//           new IconButton(
//             icon: Icon(Icons.shopping_basket),
//             onPressed: () {
//               Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => new Cart()));
//             },
//           ),
//         ],
//       ),
//       body: new ListView(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: new Text("Categories", style: TextStyle(fontWeight: FontWeight.bold ),),
//           ),

//           HorizontalList(),


//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: new Text("Food List", style: TextStyle(fontWeight: FontWeight.bold ),),
//           ),
//           new ItemTile(
//             itemName: 'Albaik Chicken',
//             imagePath: 'Images/Food1.png',
//             itemDesc: "4 pcs chicken Legs + Fries + a Garlic Sauce",
//             itemPrice: "13.50",
//           ),
//           Divider(
//             height: 5,
//           ),
//           new ItemTile(
//             itemName: 'Albaik Prawn',
//             imagePath: 'Images/Food2.png',
//             itemDesc: "8 pcs Prawns + fries + Cocktail Sauce ",
//             itemPrice: "24.50",
//           ),
//           Divider(
//             height: 5,
//           ),
//           new ItemTile(
//             itemName: 'Albaik IceCream',
//             imagePath: 'Images/Food6.png',
//             itemDesc: "Vanila IceCream + Strawberry toppings",
//             itemPrice: "4.50",
//           ),
//           Divider(
//             height: 5,
//           ),
//           new ItemTile(
//             itemName: 'Albaik Sandwitch',
//             imagePath: 'Images/Food4.png',
//             itemDesc: "2 Nuggets + Fries + vinegered cucumber",
//             itemPrice: "9.50",
//           ),
//           Divider(
//             height: 5,
//           ),
//           new ItemTile(
//             itemName: 'Albaik Shawrma',
//             imagePath: 'Images/Food5.png',
//             itemDesc: "smoked chopped chicken stuffed in bread",
//             itemPrice: "09.50",
//           ),
          
//           Divider(
//             height: 5,
//           ),
//           new ItemTile(
//             itemName: 'Albaik Chicken',
//             imagePath: 'Images/Food1.png',
//             itemDesc: "smoked chopped chicken stuffed in bread",
//             itemPrice: "09.50",
//           ),
//           Divider(
//             height: 5,
//           ),
//           new ItemTile(
//             itemName: 'Albaik Chicken',
//             imagePath: 'Images/Food1.png',
//             itemDesc: "smoked chopped chicken stuffed in bread",
//             itemPrice: "09.50",
//           ),
//         ],
//       ),

//       drawer: Drawer(
//         elevation: 50,
//         child: ListView(
//           children: <Widget>[
//             //Header
//             new UserAccountsDrawerHeader(
//               accountName: Text('Mohamed Rafi', style: TextStyle(color: Colors.black, )),
//               accountEmail: Text('rafimailboxes@gmail.com', style: TextStyle(color: Colors.black, )),
//               currentAccountPicture: GestureDetector(
//                 child: new CircleAvatar(
                  
//                   backgroundColor: Colors.grey,
//                   child: Icon(
//                     Icons.person,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               decoration: new BoxDecoration(color: Color.fromARGB(255, 254, 217, 0)),
//             ),
//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text('Home Page'),
//                 leading: Icon(
//                   Icons.home,
//                   color: Colors.red,
//                 ),
//               ),
//             ),

//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text('My Account'),
//                 leading: Icon(
//                   Icons.person,
//                   color: Colors.red,
//                 ),
//               ),
//             ),

//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text('My Orders'),
//                 leading: Icon(
//                   Icons.shopping_basket,
//                   color: Colors.red,
//                 ),
//               ),
//             ),

//             InkWell(
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => new Cart()));
//               },
//               child: ListTile(
//                 title: Text('Basket'),
//                 leading: Icon(
//                   Icons.shopping_cart,
//                   color: Colors.red,
//                 ),
//               ),
//             ),

//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text('Favourites'),
//                 leading: Icon(
//                   Icons.favorite,
//                   color: Colors.red,
//                 ),
//               ),
//             ),

//             Divider(),

//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text('Settings'),
//                 leading: Icon(
//                   Icons.settings,
//                   color: Colors.green,
//                 ),
//               ),
//             ),

//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text('About'),
//                 leading: Icon(
//                   Icons.help,
//                   color: Colors.blue,
//                 ),
//               ),
//             ),
//             InkWell(
//               onTap: () {
//                 Navigator.of(context).push(new MaterialPageRoute(
//                     // here we are passsing the values of the product to the product details page.
//                     builder: (context) => new LoginPage()));
//               },
//               child: ListTile(
//                 title: Text('Log Out'),
//                 leading: Icon(
//                   Icons.lock_open,
//                   color: Colors.red,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ItemTile extends StatelessWidget {
//   final String itemName;
//   final String itemDesc;
//   final String itemPrice;
//   final String imagePath;

//   ItemTile({this.itemName, this.imagePath, this.itemDesc, this.itemPrice});

//   //final String _itemName = "Albaik Broast";
//   //final String _imagePath = "Images/Food1.png";

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Stack(children: <Widget>[
//       new Card(
//         child: Container(
//           height: 100,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               SizedBox(
//                 width: (MediaQuery.of(context).size.width) * 0.30,
//                 height: 100,
//                 child: Image.asset('$imagePath', fit: BoxFit.fitWidth),
//               ),
//               new Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   new Text(
//                     '$itemName',
//                     style: TextStyle(
//                         fontSize: 16.0,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   RichText(
//                     text: TextSpan(
//                       text: '',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontStyle: FontStyle.italic,
//                           fontSize: 12.0,
//                           color: Colors.grey),
//                       children: <TextSpan>[
//                         TextSpan(text: '$itemDesc'),
//                       ],
//                     ),
//                   ),
//                   new Row(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,

//                       children: <Widget>[
//                         Container(
//                           width: 150,
//                           child: new Text(
//                             'SAR $itemPrice',
//                             style: TextStyle(
//                                 fontSize: 15.0,
//                                 color: Colors.red,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
                        

//                         new SizedBox(
//                           height: 22,
//                           width: 22,
//                           child: new RaisedButton(
//                             onPressed: () {},
//                             color: Color.fromARGB(255, 251, 200, 0),
//                           ),
//                         ),
//                         Divider(
//                           indent: 20
//                         ),
//                          new Text(
//                           '5',
//                           style: TextStyle(
//                               fontSize: 15.0,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         Divider(
//                           indent: 20
//                         ),

//                         new SizedBox(
//                           height: 22,
//                           width: 22,
//                           child: new RaisedButton(
//                             onPressed: () {},
//                             color: Color.fromARGB(255, 251, 200, 0),
                            
//                           ),
//                         )
//                       ]),
//                 ],
//               )
//             ],
//           ),
//         ),
//         elevation: 2,
//         margin: EdgeInsets.only(right: 0.0),
//       ),
//       // Positioned(
//       //     right: 5,
//       //     top: 0,
//       //     width: 30,
//       //     child: new RawMaterialButton(
//       //       fillColor: Colors.orange[700],
//       //       shape: new CircleBorder(),
//       //       elevation: 8.0,
//       //       child: new Icon(
//       //         Icons.add,
//       //         color: Colors.black,
//       //       ),
//       //       onPressed: () {},
//       //     )),
//       // Positioned(
//       //     right: 5,
//       //     top: 55,
//       //     width: 30,
//       //     child: new RawMaterialButton(
//       //       materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//       //       fillColor: Colors.orange[700],
//       //       shape: new CircleBorder(),
//       //       elevation: 8.0,
//       //       child: new Icon(
//       //         Icons.remove,
//       //         color: Colors.black,
//       //       ),
//       //       onPressed: () {},
//       //     )),
//     ]);
//   }
// }
