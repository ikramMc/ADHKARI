import 'package:flutter/material.dart';
import 'mainpage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        fontFamily: "Hacen",
        textTheme: TextTheme(

        )
      ),
     debugShowCheckedModeBanner: false,
      home:MainPage(),
    );
  }
}

