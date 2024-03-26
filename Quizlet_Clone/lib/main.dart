import 'package:flutter/material.dart';
import 'package:quizlet_clone/my_home_page.dart';
import 'package:quizlet_clone/search_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: search_home(),
      ),
    );
  }
}