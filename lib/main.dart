import 'package:flutter/material.dart';
//import 'package:carousel_pro/carousel_pro.dart';
import 'package:eShop/authentication.dart';
import 'package:eShop/pages/root_page.dart';

//My Own Imports
//import 'package:eShop/components/horizontal_listview.dart';
//import 'package:eShop/components/products.dart';
//import 'package:eShop/pages/cart.dart';
//import 'package:eShop/pages/login_page.dart';
//import 'package:eShop/pages/home_page.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: HomePage(),
    //home: LoginPage(auth: new Auth()),
    home: RootPage(auth: new Auth(),),
    //home: Temppage(),
  ));
}
