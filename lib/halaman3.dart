import 'package:flutter/material.dart';
import 'package:training_kedua/CustomGrid.dart';
import 'package:training_kedua/home.dart';

class Halaman3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'halaman 3',
      home:GridUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GridUI extends StatefulWidget {
  @override
  _GridUIState createState() => _GridUIState();
}

class _GridUIState extends State<GridUI> {
  final customGrid = MyGridView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'halaman 3',WarnaBackground: Colors.indigo,),
      body: customGrid.build(),
    );
  }
}
