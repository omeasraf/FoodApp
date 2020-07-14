import 'package:flutter/material.dart';
import 'package:foodapp/Pages/homePage.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({Key key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
        cursorColor: Colors.greenAccent,
        canvasColor: Color(0xff060504),
        backgroundColor: Color(0xff060504),
        appBarTheme: AppBarTheme(
          color: Color(0xff060504),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
