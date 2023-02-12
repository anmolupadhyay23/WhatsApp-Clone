import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:chat_app/Model/ChatModel.dart';

class avatarCard extends StatelessWidget {
  const avatarCard({Key? key, required this.contact}) : super(key: key);
  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
      Stack(
      children: [
      CircleAvatar(
      radius: 23,
        child: SvgPicture.asset("assets/person.svg",color: Colors.white,height: 30,width: 30,),
        backgroundColor: Colors.blueGrey[200],
      ),
      Positioned(
      bottom: 0,
      right: 0,
      child: CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 11,
      child: Icon(Icons.clear,color: Colors.white,size: 13,)
      ),
      ),
      ],
      ),
          SizedBox(height: 2,),
          Text(contact.name!,style: TextStyle(fontSize: 12),)
        ],
      ),
    );
  }
}
