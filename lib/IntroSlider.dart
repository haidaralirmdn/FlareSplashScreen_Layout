import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/intro_slider.dart';

import 'home.dart';

void main() {
  runApp(new Intro());
}
class Intro extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Slide> halamanSlide = new List();
  @override
  void initState() {
    // TODO: implement initState
    halamanSlide.add(
      Slide(
        title: 'Herbal Culture',
        description: 'Plant Herbal for medicine',
        pathImage: 'asset/gambar1.png',
        backgroundColor: Colors.red,
      ),
    );
    halamanSlide.add(
      Slide(
        title: 'Herbal Culture',
        description: 'Plant Herbal for medicine',
        pathImage: 'asset/gambar1.png',
        backgroundColor: Colors.cyanAccent,
      ),
    );
    halamanSlide.add(
      Slide(
        title: 'Herbal Culture',
        description: 'Plant Herbal for medicine',
        pathImage: 'asset/gambar1.png',
        backgroundColor: Colors.lime,
      ),
    );
    halamanSlide.add(
      Slide(
        title: 'Herbal Culture',
        description: 'Plant Herbal for medicine',
        pathImage: 'asset/gambar1.png',
        backgroundColor: Colors.blueAccent,
      ),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: IntroSlider(slides: this.halamanSlide,onDonePress: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
      },)

    );
  }
}