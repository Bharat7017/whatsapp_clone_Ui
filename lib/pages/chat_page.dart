// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/chat_bottom_bar.dart';
import 'package:whatsapp_clone/widget/chat_sample.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 5, top: 10),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 26,
              ),
            ),
          ),
          leadingWidth: 20,
          title: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/images/profile1.jpeg",
                    height: 45,
                    width: 45,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Developer",
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                            fontSize: 13, color: Colors.white.withOpacity(.9)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(
                  top: 8,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.video_camera_solid,
                    size: 30,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: 8, left: 5),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.call,
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(
                top: 8,
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                  )),
            )
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.jpeg"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 80),
            child: Column(
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xFFFFF3C2),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5), blurRadius: 08)
                      ]),
                  child: Text(
                    "Messages and calls are end-to-end encrypted, No one outside of this chat can read or listen. Tap to learn more",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: ChatBottomBar(),
    );
  }
}
