// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Settings",
        style: TextStyle(fontSize: 21),
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/images/profile5.jpeg",
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Aman",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 5),
                          Text("Hey there, I am using Whatsapp")
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.qr_code,
                      color: Color(0xE20B887E),
                      size: 27,
                    )
                  ],
                ),
              ),
              Divider(),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.key),
                ),
                title: Text(
                  "Account",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("Security notifications, change number"),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.lock),
                ),
                title: Text(
                  "Privacy",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("Block contacts, disappearing messages"),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.face_6),
                ),
                title: Text(
                  "Avatar",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("Create, edit, profile photo"),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.chat_sharp),
                ),
                title: Text(
                  "Chat",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("Theme, wallpapers,chat,history"),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.notifications),
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("Messages, group & call tones"),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.circle_outlined),
                ),
                title: Text(
                  "Storage",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("Network usage, auto-download"),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.language),
                ),
                title: Text(
                  "App language",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("English(Phone's language)"),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.help_outline),
                ),
                title: Text(
                  "Help",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("Help centre, contact us, privacy policy"),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.group),
                ),
                title: Text(
                  "Invite a friend",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("from"),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  "Meta",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
