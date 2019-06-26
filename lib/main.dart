import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:training_kedua/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'IntroSlider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Training kedua',
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CekHalaman extends StatefulWidget {
  @override
  _CekHalamanState createState() => _CekHalamanState();
}

class _CekHalamanState extends State<CekHalaman> {
  Future cek() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool masukHalaman = (pref.get('masuk') ?? false);
    if (masukHalaman) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Intro()));
    } else {
      pref.setBool('masuk', true);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(microseconds: 200),(){
      cek();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Intro(),
    );
  }
}

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool loading = true;

  @override
  Widget build(BuildContext context) {
    return SplashScreen.navigate(
      name: 'asset/intro.flr',
      next: CekHalaman(),
      until: () => Future.delayed(Duration(seconds: 2), () {
            setState(() {
              loading = false;
            });
          }),
      isLoading: loading,
      loopAnimation: '1',
      endAnimation: '1',
      startAnimation: '1',
    );
  }
}
