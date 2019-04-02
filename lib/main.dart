import 'package:flutter/material.dart';
import 'package:flutter_login/app_screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : 'Login UI',
      home : Home(),
      theme: ThemeData(
        brightness: Brightness.dark
      ),
    );
  }
 
}

