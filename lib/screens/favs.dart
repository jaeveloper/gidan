import 'package:flutter/material.dart';

class Favs extends StatefulWidget {
  @override
  _FavsState createState() => _FavsState();
}

class _FavsState extends State<Favs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 5, left: 0),
          child: Text(
            'Favs',
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 19.0,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
