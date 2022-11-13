// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/chat_list.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString(),style: TextStyle(fontSize: 25),)
        , actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(children: [
        // Chat List
             Expanded(child: ChatList())
        //Text Input
        // ignore: prefer_const_constructors
        ,TextField(
          // ignore: prefer_const_constructors
          decoration: InputDecoration(
            filled: true,fillColor: mobileChatBoxColor,
            prefixIcon: Padding(
               child: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,),
              padding: EdgeInsets.symmetric(horizontal: 20),),
              suffixIcon:
              Padding(child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.camera_alt,color: Colors.grey,),
                   Icon(Icons.attach_file,color: Colors.grey,),
                  Icon(Icons.money,color: Colors.grey,),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),),
              hintText: 'Type a message',
              border:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 0,style: BorderStyle.none)
           ),
           contentPadding: EdgeInsets.all(10)
            
          ),
        )
      ],),

    );
  }
}