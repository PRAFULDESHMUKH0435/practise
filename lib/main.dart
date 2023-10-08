import 'package:flutter/material.dart';
import 'package:practise/fifthpage.dart';
import 'package:practise/thirdpage.dart';
import 'fourthpage.dart';
import 'secondpage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.green
        primarySwatch: Colors.red
      ),
      home:FifthPage(),
    );
  }
}

