// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class webProfileBar extends StatelessWidget {
  const webProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.25,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: dividerColor)),color: webAppBarColor
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(radius: 20,
            backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),),
           Row(
            children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.comment,color: Colors.grey,)),
               IconButton(onPressed: () {}, icon: Icon(Icons.more_vert,color: Colors.grey,)),
            ],
           )
        ],
      ),
    );
  }
}