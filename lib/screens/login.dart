import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Login'),
      ),
      body: Center(
        child: new Text('Login page'),
      ),
    );
  }
}