import 'package:flutter/material.dart';
import 'package:gidan/screens/favs.dart';
import 'package:gidan/screens/post_card.dart';
import 'package:gidan/screens/profile.dart';
import 'package:gidan/screens/upload_post.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      Icons.zoom_out_map,
                      size: 16,
                      color: Colors.white,
                    ),
                    Text(
                      '  Map View',
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text('Josh Uk'),
              accountEmail: Text('JJJ@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            //drawer body
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Favs(),
                ),
              ),
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Post(),
                ),
              ),
              child: ListTile(
                title: Text('Upload Listing'),
                leading: Icon(Icons.post_add),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            Divider(
              thickness: 2,
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 2, right: 25.0),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.grey[300]),
              ),
              child: Icon(
                Icons.compare_arrows_sharp,
                color: Colors.grey[600],
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          ProgrammCard(),
          // ProgrammCard(),
          // ProgrammCard(),
          // ProgrammCard(),
        ],
      ),
    );
  }
}
