import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class customCard extends StatelessWidget {
  const customCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: SvgPicture.asset(
                "assets/group.svg",
                color: Colors.white,
                height: 37,
                  width: 37,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              "Dev Stack",
              style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(width: 3,),
                Text("Hey There!")
              ],
            ),
            trailing: Text("18:01"),
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
