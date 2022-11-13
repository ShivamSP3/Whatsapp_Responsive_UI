// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/contacts_list.dart';
import 'package:whatsapp_clone/Widgets/web_profile_bar.dart';
import 'package:whatsapp_clone/colors.dart';

import '../Widgets/chat_list.dart';
import '../Widgets/web_chat_appbar.dart';
import '../Widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Web Profile Bar
                webProfileBar(),
                // Web Search bar
                WebSearchBar(),
                ContactsList()
              ],
            ),
          ),
        ),
        // Web Screen
        Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/backgroundImage.png'),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                // Chat App Bar
                WebChatAppBar(),
                //Chat List
                Expanded(child: ChatList())
                // Message Input
                ,
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: dividerColor)),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 15),
                        child: TextField(
                            decoration: InputDecoration(
                          fillColor: searchBarColor,
                          filled: true,
                          hintText: "Type a message",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 0, style: BorderStyle.none)),
                              contentPadding: EdgeInsets.only(left: 15,top: 10)

                        )),
                      )),
                       IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mic,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                )
              ],
            ))
      ],
    ));
  }
}
