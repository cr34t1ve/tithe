import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController numController = new TextEditingController();
  //double inputVal = numController ;
  var titheVal = '0.00';
  @override
  Widget build(BuildContext context) {
    numController.addListener(() {
      titheVal = numController.text;
    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 169.0,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    color: Colors.black,
                    //width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Tithe',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Spacer(
                            flex: 7,
                          ),
                          Text(
                            '10% of Amount Entered',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Spacer(),
                          Text(
                            'GHS $titheVal',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 3,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'Enter your amount in GHS'
                ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                height: 120,
                child: TextField(
                  controller: numController,
                  onChanged: (text) {
                    titheVal = text;
                  },
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 38),
                  decoration: InputDecoration(
                      hintText: '0.00',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0))),
                ),
              ),
            ),
            Spacer(
              flex: 16,
            )
          ],
        ),
      ),
    );
  }
}
