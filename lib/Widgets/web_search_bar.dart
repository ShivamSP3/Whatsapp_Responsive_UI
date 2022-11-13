// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.06,
      width: MediaQuery.of(context).size.width*0.25,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(
        color: dividerColor
      ))),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          prefixIcon:  Padding(
            child: Icon(Icons.search,size: 20,),
            padding: EdgeInsets.symmetric(horizontal: 20),)
        ,  hintText: 'Search or start a new chat',
           hintStyle:  TextStyle(fontSize: 14),
           border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 0,style: BorderStyle.none)
           ),
           contentPadding: EdgeInsets.all(10)
        ),
      ),
    );
  }
}