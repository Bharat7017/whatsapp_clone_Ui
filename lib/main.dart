// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/chat_page.dart';
import 'package:whatsapp_clone/pages/home-page.dart';
import 'package:whatsapp_clone/pages/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(color: Color(0xCD056C63)),
            bottomSheetTheme: BottomSheetThemeData(
                backgroundColor: Colors.black.withOpacity(0))),
        routes: {
          "/": (context) => HomePage(),
          "settingsPage": (context) => SettingsPage(),
          "chatPage": (context) => ChatPage(),
        });
  }
}
