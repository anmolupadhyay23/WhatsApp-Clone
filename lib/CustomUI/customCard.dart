import 'package:chat_app/Model/ChatModel.dart';
import 'package:chat_app/Screens/individualPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class customCard extends StatelessWidget {
  const customCard({Key? key,required this.chatModel}) : super(key: key);
  final ChatModel chatModel;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualPage(
          chatModel: chatModel,
        )));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: SvgPicture.asset(
                chatModel.isgroup! ? "assets/group.svg" : "assets/person.svg",
                color: Colors.white,
                height: 37,
                  width: 37,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              chatModel.name!,
              style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(width: 3,),
                Text(chatModel.currentMessage!)
              ],
            ),
            trailing: Text(chatModel.time!),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}
