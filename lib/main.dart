

import 'package:bottomtabnavigation/screens/account.dart';
import 'package:bottomtabnavigation/screens/home.dart';
import 'package:bottomtabnavigation/screens/info.dart';
import 'package:flutter/material.dart';


void main(){

  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _pagesData = [Home() , Info() , Account()] ;
  int _selectedItem = 0 ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     title: "BottomNavigationTabs",
     home: Scaffold(appBar: AppBar(
      title: Text("BottomNavigation"),
     ),
     body: _pagesData[_selectedItem],
     bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
       BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Home" ) ,
       BottomNavigationBarItem(icon: Icon(Icons.info) , label: "Info" ) ,
       BottomNavigationBarItem(icon: Icon(Icons.account_box) , label: "Account" ) ,
       
     ] ,
     currentIndex: _selectedItem,
     onTap: ((value) => {
      setState((() => {
        _selectedItem = value  
      }))
     }),
     ),
     
     ),

    );
  }
}