// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: Container(
            alignment: Alignment.centerLeft,
            child: ClipPath(
              clipper: UpperNipMessageClipperTwo(MessageType.receive),
              child: Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10),
                decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                child: Text(
                  "Hi, Programmer, How are you?",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(color: Color(0xFFE4FDCA)),
              child: Text(
                "Hi, Developer, i am fine and what about you?",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        )
      ],
    );
  }
}
