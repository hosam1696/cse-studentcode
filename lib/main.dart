import 'package:flutter/material.dart';
import 'package:studentcode/screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSE Student Code',
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
        accentColor: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Directionality(
        child: HomeScreen(),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
