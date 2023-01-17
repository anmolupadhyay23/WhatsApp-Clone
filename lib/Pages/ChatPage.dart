import 'package:chat_app/CustomUI/customCard.dart';
import 'package:chat_app/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class chatApp extends StatefulWidget {
  const chatApp({Key? key}) : super(key: key);

  @override
  State<chatApp> createState() => _chatAppState();
}

class _chatAppState extends State<chatApp> {

  List<ChatModel> chats=[
    ChatModel(
      name: "Devstack",
      isgroup: false,
      currentMessage: "Hey There!",
      time: "4:00",
      icon: "person.svg"
    ),

    ChatModel(
        name: "Kishor",
        isgroup: false,
        currentMessage: "Hey Everyone!",
        time: "10:00",
        icon: "person.svg"
    ),

    ChatModel(
        name: "Dev Server Chat",
        isgroup: true,
        currentMessage: "Hey everone on this group!",
        time: "10:00",
        icon: "group.svg"
    ),

    ChatModel(
        name: "Balram Friends",
        isgroup: true,
        currentMessage: "Hey everone on this group!",
        time: "10:00",
        icon: "group.svg"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context,index)=>customCard(
            chatModel: chats[index]),
      ),
    );
  }
}
