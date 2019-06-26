import 'package:flutter/material.dart';
import 'package:training_kedua/home.dart';

class Halaman1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Halaman 1',WarnaBackground: Colors.lightGreenAccent,),
      body: Center(child: RaisedButton(child: Text('back'),onPressed: (){
        Navigator.pop(context);
      },),),
    );
  }
}