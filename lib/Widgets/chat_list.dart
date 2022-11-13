import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/my_message.card.dart';
import 'package:whatsapp_clone/Widgets/sender_messagecard.dart';
import 'package:whatsapp_clone/info.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          // My Message -> Card
          return MyMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
        // SenderMessage -> Card
        return SenderMessageCard(message: messages[index]['text'].toString(), date: messages[index]['time'].toString());
      },
    );
  }
}
