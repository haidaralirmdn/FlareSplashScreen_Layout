import 'package:flutter/material.dart';
import 'package:training_kedua/home.dart';
import 'package:toast/toast.dart';

class Halaman2 extends StatelessWidget {
  final dataMakanan = [
    'Ayam Bakar',
    'Nasi Goreng',
    'Rendang',
    'Sate',
    'Dendeng',
    'Fried Chiken',
    'Kwetiau',
    'Roti Bakar',
    'Kopi'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'halaman 2',
        WarnaBackground: Colors.cyan,
      ),
      body: ListView.builder(
        // separatorBuilder: (context,index)=> Divider(color: Colors.black38),
        itemCount: dataMakanan.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  Toast.show("${dataMakanan[index].toString()}", context,
                      duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                },
                trailing: Icon(Icons.restaurant_menu),
                title: Text(dataMakanan[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
