import 'package:chat_app/Pages/CameraPage.dart';
import 'package:chat_app/Pages/ChatPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController ?_controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=TabController(length: 4, vsync: this, initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Chat App'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton<String>(
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (BuildContext context){
            return [
              PopupMenuItem(child: Text("New Group"), value: "New Group",),
              PopupMenuItem(child: Text("New Broadcast"), value: "New Broadcast",),
              PopupMenuItem(child: Text("Whatsapp web"), value: "Whatsapp web",),
              PopupMenuItem(child: Text("Starred Messages"), value: "Starred Messages",),
              PopupMenuItem(child: Text("Settings"), value: "Settings",),
            ];
          })
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          cameraPage(),
          chatApp(),
          Text('Status'),
          Text('Calls'),
        ],
      ),
    );
  }
}
