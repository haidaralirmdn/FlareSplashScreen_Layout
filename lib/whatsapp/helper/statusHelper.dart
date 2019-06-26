import 'package:training_kedua/whatsapp/model/statusModel.dart';

class StatusHelper {
  static var dataStatus = [
    StatusModel('Itsuki Nakano', 'Today, 10:30', 'asset/gambar1.png'),
    StatusModel('Nino Nakano', 'Today, 10:30', 'asset/gambar1.png'),
    StatusModel('Ichika Nakano', 'Today, 10:30', 'asset/gambar1.png'),
    StatusModel('Miku Nakano', 'Today, 10:30', 'asset/gambar1.png')
  ];

  static StatusModel getStatusItem(int index){
    return dataStatus [index];
  }

  static var itemCount = dataStatus.length;
}