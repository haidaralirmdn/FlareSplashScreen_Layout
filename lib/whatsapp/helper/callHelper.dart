import 'package:training_kedua/whatsapp/model/callModel.dart';

class CallHelper {
  static var dataCall = [
    CallModel('Itsuki Nakano', 'Today, 10:30', 'asset/gambar1.png'),
    CallModel('Nino Nakano', 'Today, 10:30', 'asset/gambar1.png'),
    CallModel('Ichika Nakano', 'Today, 10:30', 'asset/gambar1.png'),
    CallModel('Miku Nakano', 'Today, 10:30', 'asset/gambar1.png')
  ];

  static CallModel getCallItem(int index){
    return dataCall [index];
  }

  static var itemCount = dataCall.length;
}