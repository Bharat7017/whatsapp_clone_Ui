// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2.5),
                      borderRadius: BorderRadius.circular(40)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/images/status.jpeg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My status",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Today,12:30 am",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz_outlined,
                            color: Color(0xE20B887E),
                          ))),
                )
              ],
            )),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Recent Updates"),
        ),
        for (int i = 1; i < 3; i++)
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 2.5),
                      borderRadius: BorderRadius.circular(40)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/images/status$i.jpeg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bharat",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Today, 12:51 pm",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text("View Updates"),
        ),
        for (int i = 3; i < 6; i++)
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2.5),
                      borderRadius: BorderRadius.circular(40)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/images/status$i.jpeg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Developer",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Yesterday, 9:51 pm",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        SizedBox(
          height: 13,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
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
