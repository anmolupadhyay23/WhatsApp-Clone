import 'package:flutter/material.dart';

class chatApp extends StatefulWidget {
  const chatApp({Key? key}) : super(key: key);

  @override
  State<chatApp> createState() => _chatAppState();
}

class _chatAppState extends State<chatApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
