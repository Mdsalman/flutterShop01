// import 'package:flutter/material.dart';
// import 'package:carousel_pro/carousel_pro.dart';
// import 'package:eShop/authentication.dart';
// import 'package:eShop/pages/root_page.dart';

// //My Own Imports
// import 'package:eShop/components/horizontal_listview.dart';
// import 'package:eShop/components/products.dart';
// import 'package:eShop/pages/cart.dart';
// import 'package:eShop/pages/login_page.dart';


// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

//   TabController tabController;

//   @override
//   void initState(){
//     super.initState();
//     tabController = new TabController(vsync: this, length: 2);
//   }

//   @override
//   void dispose(){
//     super.dispose();
//     tabController.dispose();
//   }



//   @override
//   Widget build(BuildContext context) {
//     Widget image_carousel = new Container(
//       height: 200.0,
//       child: new Carousel(
//         boxFit: BoxFit.cover,
//         dotSize: 4,

//         images: [
//           AssetImage('Images/1.jpg'),
//           AssetImage('Images/2.jpg'),
//           AssetImage('Images/3.jpg'),
//           AssetImage('Images/4.jpg'),
//           AssetImage('Images/5.jpg'),
//           AssetImage('Images/6.jpg'),
//           AssetImage('Images/7.jpg'),
//         ],
//         //autoplay: false,
//         animationCurve: Curves.fastOutSlowIn,
//         animationDuration: Duration(milliseconds: 1000),
//         indicatorBgPadding: 10.0,
//       ),
//     );

//     return Scaffold(
      
//       appBar: AppBar(
//         elevation: 2,
//         backgroundColor: Color.fromARGB(255, 254, 217, 0),
//         title: Text('Hunger Station',  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        
//         actions: <Widget>[
//           IconButton(
//               icon: Icon(
//                 Icons.search,
//                 color: Colors.black,
//               ),
//               onPressed: () {}),
//           IconButton(
//               icon: Icon(
//                 Icons.shopping_cart,
//                 color: Colors.black,

//               ),
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => new Cart()));
//               }),
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
//                 title: Text('Shopping Cart'),
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
  
//       body: new ListView(
//         children: <Widget>[


//           //Image carousel begins here
//           //image_carousel,

//           //Padding widget
//           // new Padding(
//           //   padding: const EdgeInsets.all(8.0),
//           //   child: new Text('Categories'),
//           // ),

//           //Horizontal List view begins here
//           //HorizontalList(),

//           //Padding widget
//           // new Padding(
//           //   padding: const EdgeInsets.all(20.0),
//           //   child: new Text('Recent Products'),
//           // ),

//           //grid View
//           Container(
//             height: 500,
//             child: Products(),
//           )
//         ],
//       ),
//     );
//   }
// }
