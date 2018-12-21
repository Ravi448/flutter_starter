import 'package:flutter/material.dart';

class ListPage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: new Text('List'),
      ),
      body: Center(
        child: new Text('My Friends'),
      ),
    );
  }
}