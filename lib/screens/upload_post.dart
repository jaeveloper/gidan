import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        title: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 5, left: 0),
          child: Text(
            'Post',
            style: TextStyle(
                //fontFamily: 'Billabong',
                color: Colors.grey[700],
                fontSize: 19.0,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
