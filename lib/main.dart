import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_app/pages/home.dart';

void main() {
  runApp(new myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To_Do_App',
      home: homePage(),
    );
  }
}
