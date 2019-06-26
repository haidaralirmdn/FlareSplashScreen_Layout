import 'package:flutter/material.dart';
import 'package:training_kedua/whatsapp/helper/chatHelper.dart';
import 'package:training_kedua/whatsapp/helper/statusHelper.dart';
import 'package:training_kedua/whatsapp/model/chatModel.dart';
import 'package:training_kedua/whatsapp/model/statusModel.dart';
import 'package:training_kedua/whatsapp/helper/callHelper.dart';
import 'package:training_kedua/whatsapp/model/callModel.dart';

class WAPage extends StatefulWidget {
  @override
  _WAPageState createState() => _WAPageState();
}

class _WAPageState extends State<WAPage> with SingleTickerProviderStateMixin {
  TabController myController;

  @override
  void initState() {
    // TODO: implement initState
    myController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('WhatsApp'),
        bottom: TabBar(
          controller: myController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'Chat',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: myController,
        children: <Widget>[
          Center(
            child: Icon(Icons.camera_alt),
          ),
          // Chat
          ListView.builder(
            itemCount: ChatHelper.itemCount,
            itemBuilder: (BuildContext, index) {
              ChatModel chatModel = ChatHelper.getChatItem(index);
              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(chatModel.gambar),
                                fit: BoxFit.fill)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    chatModel.nama,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(chatModel.isiPesan),
                                ],
                              ),
                              Text(chatModel.tanggal),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              );
            },
          ),
          //Status
          ListView.builder(
              itemCount: StatusHelper.itemCount,
              itemBuilder: (BuildContext, index) {
                StatusModel statusModel = StatusHelper.getStatusItem(index);
                return Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(statusModel.gambar),
                                  fit: BoxFit.fill)),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      statusModel.nama,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text(statusModel.time),
                                  ],
                                ),
                                Icon(Icons.more_vert)
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                );
              }),
          //Panggilan
          ListView.builder(
            itemCount: CallHelper.itemCount,
            itemBuilder: (BuildContext, index) {
              CallModel callModel = CallHelper.getCallItem(index);
              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(callModel.gambar),
                                fit: BoxFit.fill)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    callModel.nama,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(callModel.time),
                                ],
                              ),
                              Icon(Icons.call),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
