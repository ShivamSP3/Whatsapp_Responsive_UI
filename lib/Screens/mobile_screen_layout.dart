// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/contacts_list.dart';
import 'package:whatsapp_clone/colors.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, child: Scaffold(
       appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        toolbarHeight: 70,
     //   centerTitle: true,
        title: Text("Whatsapp",style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey
        ),),actions: [
          IconButton(onPressed: () {
          }, icon: Icon(Icons.search,color: Colors.grey,)),
           IconButton(onPressed: () {
          }, icon: Icon(Icons.more_vert,color: Colors.grey,))
        ],
        bottom: TabBar(
          indicatorColor: tabColor,
          indicatorWeight: 4,
          labelColor: tabColor,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          tabs: [
          Tab(text: "CHATS",),
          Tab(text: "STATUS",),
          Tab(text: "CALLS",),

        ]),
       ),
      body: ContactsList(),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: tabColor,child: Icon(Icons.comment,color:Color.fromARGB(255, 255, 255, 255)),),
      ));
  }
}