import 'package:chat_app/Model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class buttonCard extends StatelessWidget {
  const buttonCard({Key? key, required this.name, required this.icon}) : super(key: key);
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        child: Icon(icon,size: 26,color: Colors.white,),
        backgroundColor: Color(0xFF25D366),
      ),
      title: Text(name!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
    );
  }
}

