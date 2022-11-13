// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/mobile_chat_screen.dart';
import 'package:whatsapp_clone/colors.dart';

import '../info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  MobileChatScreen()
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    title: Text(info[index]['name'].toString(),
                        style: TextStyle(fontSize: 20)),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        info[index]['message'].toString(),
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 20,
                        backgroundImage:
                            NetworkImage(info[index]['profilePic'].toString())),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Divider(
                color: dividerColor,
                indent: 85,
              )
            ],
          );
        },
      ),
    );
  }
}
