// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(children: [
        for (int i = 1; i < 11; i++)
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "chatPage");
            },
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
                        Text(
                          "Hi, Developer, How are You?",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "12:28",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF5DE062),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 28,
                        height: 27,
                        decoration: BoxDecoration(
                            color: Color(0xFF5DE062),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "2",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Icon(
                Icons.archive_outlined,
                size: 25,
                color: Color(0xE20B887E),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Text(
                "Archived",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            )
          ],
        ),
        SizedBox(
          height: 30,
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
