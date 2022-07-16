// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:interface_test/Screens/Order.dart';


const Alignment topleft = Alignment.topLeft;
final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20), maximumSize: Size(100, 100));
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Order(),
      ),
    ),
  );
}
