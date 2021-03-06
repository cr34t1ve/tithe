import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    //Splash duration
    new Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/home');
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Center(
            child: Text(
              'Tithe.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 27
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/Group 239.png',
              fit: BoxFit.fitWidth,
              ),
          )
        ],
      ),
    );
  }
}