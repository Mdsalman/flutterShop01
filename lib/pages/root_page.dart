import 'package:flutter/material.dart';
import 'package:eShop/pages/login_page.dart';
import 'package:eShop/authentication.dart';
import 'home.dart';
import 'package:eShop/main.dart';


class RootPage extends StatefulWidget {
  RootPage({this.auth});
  final BaseAuth auth;
//this is comment
  @override
  State<StatefulWidget> createState() => new _RootPageState();
}

enum AuthStatus { notSignedIn, signedIn }

class _RootPageState extends State<RootPage> {
  AuthStatus authStatus = AuthStatus.notSignedIn;

  @override
  void initState() {
    super.initState();

    widget.auth.currentUser().then((userId) {
      setState(() {
        authStatus =
            userId == null ? AuthStatus.notSignedIn : AuthStatus.signedIn;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStatus.notSignedIn:
        return new LoginPage(auth: widget.auth);
      case AuthStatus.signedIn:
        return new HomePage();
    }
  }
}
