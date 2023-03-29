// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ChatBottomBar extends StatelessWidget {
  const ChatBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg.jpeg"), fit: BoxFit.cover),
      ),
      height: 65,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 160,
                  child: TextFormField(
                      style: TextStyle(fontSize: 19),
                      decoration: InputDecoration(
                          hintText: "Message", border: InputBorder.none)),
                ),
                Container(
                  child: Icon(
                    Icons.attachment_outlined,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.currency_rupee_outlined,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.camera_alt,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xFF00CE5E),
                borderRadius: BorderRadius.circular(30)),
            child: Icon(
              Icons.mic,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
