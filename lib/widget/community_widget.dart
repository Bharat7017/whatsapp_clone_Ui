// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CommunityWidget extends StatelessWidget {
  const CommunityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image.asset(
              "assets/images/community.jpg",
              height: 230,
              width: 230,
            ),
          ),
          Text(
            "Introducing communities",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Easily organise your related groups and send",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "announcements. Now, your communities, like",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "neighbourhoods or schools, can have their own",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "space.",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 75.0),
                  backgroundColor: Color(0xE20B887E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: Text("Start your community"))
        ],
      ),
    );
  }
}
