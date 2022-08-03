import 'package:flutter/material.dart';
import 'package:gocore_front/activities.dart';
import 'package:gocore_front/signin.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ThemeData().colorScheme.copyWith(primary: Color.fromARGB(255, 31, 30, 30)),
      ),
    debugShowCheckedModeBanner: false,
    home: Signin1()
  ));
}
