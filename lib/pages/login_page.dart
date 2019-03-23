import 'package:flutter/material.dart';
import 'package:eShop/main.dart';
import 'package:eShop/authentication.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  LoginPage({this.auth});
  final BaseAuth auth;

  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();

}

enum FormType { login, register }

class _LoginPageState extends State<LoginPage> {
  final formKey = new GlobalKey<FormState>();

  String _email;
  String _password;
  FormType _formType = FormType.login;

  bool validateAndSave() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void validateAndSubmit() async {

    String userId;

    if (validateAndSave()) {
      try {
        if (_formType == FormType.login) {

        userId = await widget.auth.signInWithEmailAndPassword( _email, _password);
        //print('Signed in: ${userId}');
        }
        else
        {
        userId = await widget.auth.createUserWithEmailAndPassword( _email, _password);
        //print('Signed in: ${userId}');
        }

        if (userId != null) {
           Navigator.of(context).push(new MaterialPageRoute(
                   builder: (context) => new HomePage()));
        }

      } catch (e) {
        print('Error: $e');
      }
    }
  }

  void moveToRegister() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'login',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 40.0,
        child: Image.asset('Images/appicon.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      //initialValue: 'rafimailboxes@gmail.com',
      validator: (value) => value.isEmpty ? 'Email Can\'t be Empty' : null,
      onSaved: (value) => _email = value,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      //initialValue: 'some password',
      obscureText: true,
      validator: (value) => value.isEmpty ? 'Password Can\'t be Empty' : null,
      onSaved: (value) => _password = value,

      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: validateAndSubmit,
        //() {

        // Navigator.of(context).pushNamed(HomePage.tag);

        //Navigator.of(context).push(new MaterialPageRoute(
        // here we are passsing the values of the product to the product details page.
        //        builder: (context) => new HomePage()));
        //},
        padding: EdgeInsets.all(12),
        color: Colors.redAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final newuserlable = FlatButton(
      child: Text(
        'New User?',
        style: TextStyle(color: Colors.black54, fontSize: 15),
      ),
      onPressed: moveToRegister,
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54, fontSize: 15),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 24.0),
              //loginButton,
              //newuserlable,
              NewOldUserButtons(),
              forgotLabel
            ],
          ),
        ),
      ),
    );
  }

  Widget NewOldUserButtons() {
    if (_formType == FormType.login)
      return 
        new Column(
          
          children: <Widget>[
Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            onPressed: validateAndSubmit,
            //() {

            // Navigator.of(context).pushNamed(HomePage.tag);

            //Navigator.of(context).push(new MaterialPageRoute(
            // here we are passsing the values of the product to the product details page.
            //        builder: (context) => new HomePage()));
            //},
            padding: EdgeInsets.all(12),
            color: Colors.redAccent,
            child: Text('Log In', style: TextStyle(color: Colors.white)),
          ),
        ),
        FlatButton(
          child: Text(
            'New User?',
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),
          onPressed: moveToRegister,
        )
        ],);

    else {

      return new Column(children: <Widget>[

        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            onPressed: validateAndSubmit,
            //() {

            // Navigator.of(context).pushNamed(HomePage.tag);

            //Navigator.of(context).push(new MaterialPageRoute(
            // here we are passsing the values of the product to the product details page.
            //        builder: (context) => new HomePage()));
            //},
            padding: EdgeInsets.all(12),
            color: Colors.redAccent,
            child: Text('Create Account', style: TextStyle(color: Colors.white)),
          ),
        ),
        FlatButton(
          child: Text(
            'Old User?',
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),
          onPressed: moveToLogin,
        )
      ]
      );
    }
  }
}
