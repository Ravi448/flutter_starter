import 'package:flutter/material.dart';
import 'package:flutter_starter/screens/home.dart';
import 'package:flutter_starter/screens/list.dart';
import 'package:flutter_starter/screens/settings.dart';

class MainTabs extends StatefulWidget{
  MainTabs({Key key}):super(key:key);
  @override
  Apptabs createState() => Apptabs();
}


class Apptabs extends State<MainTabs>{
  int _selected = 0;
  final _navigationpages = [
      new Home(title: 'Home Page'),
      new ListPage(),
      new Settings()
  ];
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Center(
            child: _navigationpages.elementAt(_selected),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text('Home')
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.group),
                title: new Text('Friends')
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.settings),
                title: new Text('Settings')
              )
            ],
            currentIndex: _selected,
            fixedColor: Colors.deepPurple,
            onTap: _navigate,
          ),
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.deepPurpleAccent[700]
      ),
    );
  }
  void _navigate(int index){
    setState((){
      _selected = index;
    });
  }
}