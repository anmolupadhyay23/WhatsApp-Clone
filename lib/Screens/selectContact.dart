import 'package:chat_app/CustomUI/buttonCard.dart';
import 'package:chat_app/CustomUI/contactCard.dart';
import 'package:chat_app/Model/ChatModel.dart';
import 'package:chat_app/Screens/createGroup.dart';
import 'package:flutter/material.dart';

class selectContact extends StatefulWidget {
  const selectContact({Key? key}) : super(key: key);

  @override
  State<selectContact> createState() => _selectContactState();
}

class _selectContactState extends State<selectContact> {
  @override
  Widget build(BuildContext context) {

    List<ChatModel> contacts=[
      ChatModel(
        name: "Dev Stack",
        status: "A full stack developer"
      ),
      ChatModel(
          name: "Balram",
          status: "Flutter developer"
      ),
      ChatModel(
          name: "Saket",
          status: "Developer"
      ),
      ChatModel(
          name: "Dev",
          status: "App developer"
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select Contact",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
            Text("256 Contacts",style: TextStyle(fontSize: 13)),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search,size: 26)),
          PopupMenuButton<String>(
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (BuildContext context){
                return [
                  PopupMenuItem(child: Text("Invite a friend"), value: "Invite a friend",),
                  PopupMenuItem(child: Text("Contacts"), value: "Contacts",),
                  PopupMenuItem(child: Text("Refresh"), value: "Refresh",),
                  PopupMenuItem(child: Text("Help"), value: "Help",),
                ];
              })
        ],
      ),
      body: ListView.builder(
          itemCount: contacts.length+2,
          itemBuilder: (context,index) {
            if(index==0){
              return InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (builder)=>createGroup()));
                  },
                  child: buttonCard(icon: Icons.group,name: "New Group",)
              );
            }
            else if(index==1){
              return buttonCard(icon: Icons.person_add, name: "New Contact");
            }
            return contactCard(contact: contacts[index-2]);
          }
      )
    );
  }
}
