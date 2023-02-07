// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'text_control.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First Assignment'),
      ),
      body: TextControl(),
    ));
  }
}
