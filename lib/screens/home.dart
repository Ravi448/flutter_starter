import 'package:flutter/material.dart';
import 'package:flutter_starter/screens/login.dart';

class Home extends StatelessWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.account_circle),iconSize: 30,color: Colors.white,onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
          },)
        ],
      ),
      body: Center(
        child: new Text('Home Screen'),
      )
    );
  }
}