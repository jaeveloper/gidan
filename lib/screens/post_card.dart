import 'package:flutter/material.dart';
import 'package:gidan/screens/post_detail.dart';

class ProgrammCard extends StatefulWidget {
  @override
  _ProgrammCardState createState() => _ProgrammCardState();
}

class _ProgrammCardState extends State<ProgrammCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => PostDetail(),
        ),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              Hero(
                tag: 'assets/images/house.jpeg',
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(
                      'assets/images/house.jpeg',
                      fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, top: 20),
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black87,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 24,
                      right: 10,
                      top: 16,
                      bottom: 6,
                    ),
                    child: Text(
                      '200,000',
                      style: TextStyle(
                          letterSpacing: 0,
                          wordSpacing: 0.1,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 0,
                      right: 10,
                      top: 16,
                      bottom: 4,
                    ),
                    child: Text(
                      'Jenson, MI 49428',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                  ),
                ],
              ),
              Container(
                  padding: EdgeInsets.only(
                    left: 24,
                    right: 10,
                    top: 0,
                    bottom: 10,
                  ),
                  child: Text('4 bedrooms')),
            ],
          ),
        ],
      ),
    );
  }
}
