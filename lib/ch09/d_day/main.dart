import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ios/ch09/d_day/screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    )
  );
}