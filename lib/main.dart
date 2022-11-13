// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Responsive/responsive_layout.dart';
import 'package:whatsapp_clone/Screens/mobile_screen_layout.dart';
import 'package:whatsapp_clone/Screens/web_screen_layout.dart';
import 'package:whatsapp_clone/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: 'Whatsapp UI',
     theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backgroundColor,
     ),
     home: ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenlayout: WebScreenLayout()),
    );
  }
}

