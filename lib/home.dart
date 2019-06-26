import 'package:flutter/material.dart';
import 'package:training_kedua/halaman1.dart';
import 'package:training_kedua/halaman2.dart';
import 'package:training_kedua/halaman4.dart';

import 'halaman3.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Splash',
        WarnaBackground: Colors.blueAccent,
      ),
      body: HalamanUI(),
    );
  }
}

class HalamanUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(
            'https://media1.giphy.com/media/xThuWpLkxm2ALllr3i/giphy.gif?cid=790b76115d11dafb6b4f626773f91211&rid=giphy.gif',
            fit: BoxFit.fill,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Ready Go Go Go',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                child: Column(
                  children: <Widget>[Icon(Icons.android), Text('Halaman1')],
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Halaman1()));
                },
              ),
              GestureDetector(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.android),
                    Text(
                      'Halaman 2',
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Halaman2()));
                },
              ),
              GestureDetector(
                child: Column(
                  children: <Widget>[Icon(Icons.android), Text('Halaman 3')],
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Halaman3()));
                },
              ),
              GestureDetector(
                child: Column(
                  children: <Widget>[Icon(Icons.android), Text('Halaman 4')],
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WAPage()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  Color WarnaBackground;

  CustomAppbar({Key key, this.title, this.WarnaBackground}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      elevation: 10,
      centerTitle: true,
      // leading: Icon(Icons.home),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
          ), onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.settings,
          ), onPressed: () {},
        )
      ],
      backgroundColor: WarnaBackground,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
