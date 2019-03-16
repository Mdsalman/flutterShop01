import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Temppage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Bismillah')
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('Items').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return  Text('Loading data.. Please wait.');
          return Column(children: <Widget>[
            new Text(snapshot.data.documents[0]['Name']),
            new Text(snapshot.data.documents[0]['Price'].toString()),
            new Text(snapshot.data.documents[0]['Description']),
            new Image.network(snapshot.data.documents[0]['Picture']),
          ],);
        },
      ) ,
    );
  }
}
