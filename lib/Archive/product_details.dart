// import 'package:flutter/material.dart';
// import 'package:eShop/main.dart';

// class ProductDetails extends StatefulWidget {
//   final product_detail_name;
//   final product_detail_newprice;
//   final product_detail_oldprice;
//   final product_detail_picture;

//   ProductDetails({
//     this.product_detail_name,
//     this.product_detail_newprice,
//     this.product_detail_oldprice,
//     this.product_detail_picture,
//   });

//   @override
//   _ProductDetailsState createState() => _ProductDetailsState();
// }

// class _ProductDetailsState extends State<ProductDetails> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//         elevation: 0.1,
//         backgroundColor: Colors.red,
//         title: InkWell(
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => new HomePage()));
//           },
//           child: Text('Fashapp'),
//         ),
//         actions: <Widget>[
//           new IconButton(
//               icon: Icon(
//                 Icons.search,
//                 color: Colors.white,
//               ),
//               onPressed: () {})
//         ],
//       ),
//       body: new ListView(
//         children: <Widget>[
//           new Container(
//               padding: EdgeInsets.only(top: 10.0),
//               height: 200.0,
//               child: GridTile(
//                 child: Container(
//                   color: Colors.white,
//                   child: Image.asset(widget.product_detail_picture),
//                 ),
//                 footer: new Container(
//                   color: Colors.white54,
//                   child: ListTile(
//                     leading: new Text(
//                       widget.product_detail_name,
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                     ),
//                     title: new Row(
//                       children: <Widget>[
//                         Expanded(
//                           child: new Text(
//                             "\$${widget.product_detail_oldprice}",
//                             style: TextStyle(
//                                 color: Colors.grey,
//                                 decoration: TextDecoration.lineThrough),
//                           ),
//                         ),
//                         Expanded(
//                             child: new Text(
//                           "\$${widget.product_detail_newprice}",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.red),
//                         ))
//                       ],
//                     ),
//                   ),
//                 ),
//               )),

//           //    =============== First Buttons =================================
//           Row(
//             children: <Widget>[
//               //    =============== Size Button   =================================
//               Expanded(
//                 child: MaterialButton(
//                   onPressed: () {
//                     showDialog(
//                         context: context,
//                         builder: (context) {
//                           return new AlertDialog(
//                             title: new Text("Size"),
//                             content: new Text('Choose the Size'),
//                             actions: <Widget>[
//                               new MaterialButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pop(context);
//                                 },
//                                 child: new Text("Close"),
//                               )
//                             ],
//                           );
//                         });
//                   },
//                   color: Colors.white,
//                   textColor: Colors.grey,
//                   elevation: 1,
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(child: new Text("Size")),
//                       Expanded(child: new Icon(Icons.arrow_drop_down)),
//                     ],
//                   ),
//                 ),
//               ),

//               //    =============== Color Button   =================================
//               Expanded(
//                 child: MaterialButton(
//                   onPressed: () {
//                     showDialog(
//                         context: context,
//                         builder: (context) {
//                           return new AlertDialog(
//                             title: new Text('Color'),
//                             content: new Text('Choose the Color'),
//                             actions: <Widget>[
//                               new MaterialButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pop(context);
//                                 },
//                                 child: new Text('Close'),
//                               )
//                             ],
//                           );
//                         });
//                   },
//                   color: Colors.white,
//                   textColor: Colors.grey,
//                   elevation: 1,
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(child: new Text("Color")),
//                       Expanded(child: new Icon(Icons.arrow_drop_down)),
//                     ],
//                   ),
//                 ),
//               ),

//               //    =============== Size Button   =================================
//               Expanded(
//                 child: MaterialButton(
//                   onPressed: () {
//                     showDialog(
//                         context: context,
//                         builder: (context) {
//                           return new AlertDialog(
//                             title: new Text('Quantity'),
//                             content: new Text('Choose the Quantity'),
//                             actions: <Widget>[
//                               new MaterialButton(
//                                 child: new Text('Close'),
//                                 onPressed: () {
//                                   Navigator.of(context).pop(context);
//                                 },
//                               )
//                             ],
//                           );
//                         });
//                   },
//                   color: Colors.white,
//                   textColor: Colors.grey,
//                   elevation: 1,
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(child: new Text("Qty")),
//                       Expanded(child: new Icon(Icons.arrow_drop_down)),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),

//           //    =============== Second Buttons =================================
//           Row(
//             children: <Widget>[
//               //    =============== Size Button   =================================
//               Expanded(
//                 child: MaterialButton(
//                     onPressed: () {},
//                     color: Colors.red,
//                     textColor: Colors.white,
//                     elevation: 0.1,
//                     child: Text("Buy Now")),
//               ),

//               new IconButton(
//                   icon: Icon(Icons.add_shopping_cart, color: Colors.red),
//                   onPressed: () {}),
//               new IconButton(
//                   icon: Icon(Icons.favorite_border, color: Colors.red),
//                   onPressed: () {})
//             ],
//           ),
//           new Divider(
//             color: Colors.blue,
//           ),
//           new ListTile(
//             title: new Text('Product details:'),
//             subtitle: new Text(
//                 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
//           ),
//           Divider(),
//           new Row(
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
//                 child: new Text(
//                   "Product Name",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(5.0),
//                 child: new Text(widget.product_detail_name),
//               )
//             ],
//           ),
//           new Row(
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
//                 child: new Text(
//                   "Product Brand",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(5.0),
//                 child: new Text("Brand X"),
//               )
//             ],
//           ),
//           new Row(
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
//                 child: new Text(
//                   "Product Condition",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(5.0),
//                 child: new Text("New"),
//               )
//             ],
//           ),
//           Divider(),
//           new Text('Similar Products'),

//           // Similar Products Section
//           Container(
//             height: 360.0,
//             child: Similar_Products(),
//           )
//         ],
//       ),
//     );
//   }
// }

// class Similar_Products
//  extends StatefulWidget {
//   @override
//   _Similar_ProductsState createState() => _Similar_ProductsState();
// }

// class _Similar_ProductsState extends State<Similar_Products> {
//   var product_list = [
    
//     {
//       "name": "pants1",
//       "picture": "Images/products/pants1.jpg",
//       "old_price": 256,
//       "Price": 125,
//     },
//     {
//       "name": "pants2",
//       "picture": "Images/products/pants2.jpeg",
//       "old_price": 256,
//       "Price": 125,
//     },
//     {
//       "name": "shoe1",
//       "picture": "Images/products/shoe1.jpg",
//       "old_price": 256,
//       "Price": 125,
//     }
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         itemCount: product_list.length,
//         gridDelegate:
//             new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemBuilder: (BuildContext context, int index) {
//           return Similar_Single_prod(
//             prod_name: product_list[index]['name'],
//             prod_picture: product_list[index]['picture'],
//             prod_old_price: product_list[index]['old_price'],
//             prod_price: product_list[index]['Price'],
//           );
//         });
//   }
// }




// class Similar_Single_prod extends StatelessWidget {
//   final prod_name;
//   final prod_picture;
//   final prod_old_price;
//   final prod_price;

//   Similar_Single_prod({
//     this.prod_name,
//     this.prod_picture,
//     this.prod_old_price,
//     this.prod_price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Hero(
//           tag: prod_name,
//           child: Material(
//             child: InkWell(
//               onTap: () => Navigator.of(context).push(new MaterialPageRoute(
//                 // here we are passsing the values of the product to the product details page.
//                   builder: (context) => new ProductDetails(
//                           product_detail_name: prod_name,
//                           product_detail_newprice: prod_price,
//                           product_detail_oldprice:  prod_old_price,
//                           product_detail_picture: prod_picture,
//                   ))),
//               child: GridTile(
//                   footer: Container(
//                     color: Colors.white54,
//                     child: new Row(
//                       children: <Widget>[
//                         Expanded(child: new Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),                       
//                         ),
//                         new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
//                       ],
//                     )
//                   ),
//                   child: Image.asset(
//                     prod_picture,
//                     fit: BoxFit.cover,
//                   )),
//             ),
//           )),
//     );
//   }
// }
