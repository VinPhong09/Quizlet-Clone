import 'package:flutter/material.dart';
import 'package:quizlet_clone/login_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: login_form(),
      ),
    );
  }
}
