// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallsWidget extends StatelessWidget {
  const CallsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(children: [
        for (int i = 1; i < 4; i++)
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "assets/images/profile$i.jpeg",
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bharat",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.call_made,
                              size: 15,
                              color: Colors.green,
                            ),
                            Text(
                              " (4) 02/11/22, 8:44 pm",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Icon(
                        Icons.call_sharp,
                        color: Color(0xE20B887E),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        for (int i = 4; i < 6; i++)
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "assets/images/profile$i.jpeg",
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Developer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.call_received,
                              size: 15,
                              color: Colors.green,
                            ),
                            Text(
                              " (2) 02/11/22, 8:44 pm",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Icon(
                        CupertinoIcons.video_camera_solid,
                        size: 27,
                        color: Color(0xE20B887E),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        SizedBox(
          height: 13,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Icon(
                  Icons.lock,
                  size: 15,
                ),
              ),
              Text(
                "Your Personal messages are ",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "end-to-end encrypted",
                style: TextStyle(color: Color(0xFF51C155), fontSize: 12),
              )
            ],
          ),
        )
      ]),
    ));
  }
}
