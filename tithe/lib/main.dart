import 'package:flutter/material.dart';
import 'package:tithe/home.dart';
import 'package:tithe/splash.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/splash',
    routes: {
      '/': (context) => Splash(),
      '/home': (context) => Home()
    },
    debugShowCheckedModeBanner: false,
  ));
}
