import 'package:flutter/material.dart';
import 'package:tithe/splash.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Splash()
    },
    debugShowCheckedModeBanner: false,
  ));
}
