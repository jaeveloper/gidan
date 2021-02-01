import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gidan/screens/feed.dart';
//import 'package:gradient_text/gradient_text.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return Feed();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image(
              image: AssetImage('assets/images/backg111.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black38,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 80),
              child: Text(
                'Gidan',
                style: TextStyle(
                    fontFamily: 'Billabong', fontSize: 90, color: Colors.black),
              )),
        ],
      ),
    );
  }
}
