import 'package:flutter/material.dart';

class MyGridView{
  Card getTampilanGridView(nama,image){
      return Card(
        elevation: 7,
        child: Column(
          children: <Widget>[
            Image.network(image, fit: BoxFit.fill,),
            Center(child: Text(nama)),
          ],
        ),
      );
  }

  GridView build(){
    return GridView.count(
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      children: <Widget>[
        getTampilanGridView('ayam goreng',
         "https://upload.wikimedia.org/wikipedia/commons/1/1b/Ayam_goreng_in_Jakarta.JPG"),
        getTampilanGridView('nasi goreng',
         "http://1.bp.blogspot.com/-lj5Qdzjri_c/VS-F3HFz3tI/AAAAAAAADhA/xiaWpsCd8a8/s1600/Resep%2BSehat%2BSeafood%2BRumahan1.jpg"),
         getTampilanGridView('sate',
         "https://upload.wikimedia.org/wikipedia/commons/1/1b/Ayam_goreng_in_Jakarta.JPG"),
         getTampilanGridView('bakso',
         "https://upload.wikimedia.org/wikipedia/commons/1/1b/Ayam_goreng_in_Jakarta.JPG"),
         getTampilanGridView('ikan goreng',
         "https://upload.wikimedia.org/wikipedia/commons/1/1b/Ayam_goreng_in_Jakarta.JPG"),
         getTampilanGridView('rendang',
         "https://upload.wikimedia.org/wikipedia/commons/1/1b/Ayam_goreng_in_Jakarta.JPG"),
      ],
    );
  }

}