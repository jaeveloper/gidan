import 'package:flutter/material.dart';
import 'package:gidan/screens/upload_post.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation,
      floatingActionButton: Align(
          child: FloatingActionButton(
            backgroundColor: Colors.black87,
            elevation: 1,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Post(),
              ),
            ),
            child: Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            ),
          ),
          alignment: Alignment(0.85, 1)),
   body: 
   ListView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 0.0, bottom: 0.0),
                            child: Container(
                                width: 150.0,
                                height: 150.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80.0),
                                    color: Colors.grey)),
                          ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        padding: const EdgeInsets.only(top: 23.0),
                        child: Text('',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 18.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width / 1.11,
                              height: 80,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                  ),
                ],
              ),
    
    );
  }
}
