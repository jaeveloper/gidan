import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class PostDetail extends StatefulWidget {
  @override
  _PostDetailState createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = Container(
      height: 300,
      color: Colors.blue,
      child: Hero(
        tag: 'assets/images/house.jpeg',
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('assets/images/house.jpeg'),
            AssetImage('assets/images/backddd.jpg'),
            AssetImage('assets/images/backdd.jpg'),
            AssetImage('assets/images/backg111.jpg'),
          ],
          autoplay: false,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(seconds: 1),
          dotSize: 2,
          moveIndicatorFromBottom: 0,
          showIndicator: true,
          noRadiusForIndicator: false,
          indicatorBgPadding: 1,
        ),
      ),
    );

    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Align(
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.black,
              elevation: 20,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.call,
                      size: 16,
                      color: Colors.white,
                    ),
                    Text(
                      '  Call ',
                      style: TextStyle(
                          letterSpacing: 0,
                          wordSpacing: 0.1,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            alignment: Alignment(0.1, 0.95)),
      ),
      body: ListView(
        children: <Widget>[
          imageCarousel,
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text('Categories'),
          ),
        ],
      ),
    );
  }
}
