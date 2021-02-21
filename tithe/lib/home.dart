import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double inputVal = 0.00;
  double titheVal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 169.0,
              width: 355.0,
              child: ClipRRect(
                child: Container(
                  color: Colors.black,
                  //width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Tithe',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Text(
                          '10% of Amount Entered',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          'GHS ${inputVal}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Text('Enter your amount in GHS'),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: '0.00',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0))),
            )
          ],
        ),
      ),
    );
  }
}
