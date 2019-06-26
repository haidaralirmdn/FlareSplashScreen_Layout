import 'package:training_kedua/whatsapp/model/chatModel.dart';

class ChatHelper {
  static var dataChat = [
    ChatModel('Itsuki Nakano', 'Ohayou Futarou', '19/06/2019', 'asset/gambar1.png'),
    ChatModel('Nino Nakano', 'Ohayou Futarou', '19/06/2019', 'asset/gambar1.png'),
    ChatModel('Ichika Nakano', 'Ohayou Futarou', '19/06/2019', 'asset/gambar1.png'),
    ChatModel('Miku Nakano', 'Ohayou Futarou', '19/06/2019', 'asset/gambar1.png'),
  ];
  static ChatModel getChatItem(int index){
    return dataChat [index];
  }
  static var itemCount = dataChat.length;
}
