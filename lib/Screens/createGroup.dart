import 'package:chat_app/CustomUI/avatarCard.dart';
import 'package:chat_app/CustomUI/buttonCard.dart';
import 'package:chat_app/CustomUI/contactCard.dart';
import 'package:chat_app/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class createGroup extends StatefulWidget {
  const createGroup({Key? key}) : super(key: key);

  @override
  State<createGroup> createState() => _createGroupState();
}

class _createGroupState extends State<createGroup> {

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

  List<ChatModel> groups = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("New Group",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
              Text("Add participants",style: TextStyle(fontSize: 13)),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search,size: 26)),
          ],
        ),
        body: Stack(
          children: [
            ListView.builder(
                itemCount: contacts.length+1,
                itemBuilder: (context,index) {
                  if(index==0){
                    return Container(
                      height: groups.length>0 ? 90 : 10,
                    );
                  }
                  return InkWell(
                      onTap: () {
                        if(contacts[index-1].select==false){
                          setState(() {
                            contacts[index-1].select=true;
                            groups.add(contacts[index-1]);
                          });
                        }
                        else{
                          setState(() {
                            contacts[index-1].select=false;
                            groups.remove(contacts[index-1]);
                          });
                        }
                      },
                      child: contactCard(contact: contacts[index-1])
                  );
                }
            ),
            groups.length>0 ? Column(
              children: [
                Container(
                  height: 75,
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: contacts.length,
                    itemBuilder: (context,index) {
                      if(contacts[index].select==true){
                        return InkWell(
                            onTap: () {
                              setState(() {
                                contacts[index].select=false;
                                groups.remove(contacts[index]);
                              });
                            },
                            child: avatarCard(
                                contact: contacts[index]
                            )
                        );
                      }
                      else{
                        return Container();
                      }
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Divider(
                  thickness: 1,
                )
              ],
            ) : Container(),
          ],
        )
    );
  }
}
