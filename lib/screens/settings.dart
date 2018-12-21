import 'package:flutter/material.dart';

class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: new Text('App Settings'),
      ),
      body: Center(
        child: new Text('Settings Page'),
      ),
    );
  }
}