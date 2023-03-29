// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/calls_widget.dart';
import 'package:whatsapp_clone/widget/chats_widget.dart';
import 'package:whatsapp_clone/widget/community_widget.dart';
import 'package:whatsapp_clone/widget/status_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 21,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            PopupMenuButton(
              onSelected: (selected) {
                if (selected == 6) {
                  Navigator.pushNamed(context, "settingsPage");
                }
              },
              padding: EdgeInsets.only(right: 17),
              iconSize: 28,
              itemBuilder: (context) => [
                PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New group",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
                PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New broadcast",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
                PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Link devices",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
                PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Starred messages",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
                PopupMenuItem(
                    value: 5,
                    child: Text(
                      "Payments",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
                PopupMenuItem(
                    value: 6,
                    child: Text(
                      "Settings",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xFF06968A),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  Container(
                    width: 25,
                    child: Tab(
                        icon: Icon(
                      Icons.groups,
                    )),
                  ),
                  Container(
                    width: 80,
                    child: Tab(
                      child: Row(
                        children: [
                          Text("Chats"),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 21,
                            width: 21,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(11)),
                            child: Text(
                              "10",
                              style: TextStyle(
                                  color: Color(0xD206968A), fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: Tab(
                      child: Text("Status"),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: Tab(child: Text("Calls")),
                  ),
                ],
              ),
            ),
            Flexible(
                flex: 1,
                child: TabBarView(children: [
                  CommunityWidget(),
                  ChatsWidget(),
                  StatusWidget(),
                  CallsWidget(),
                ]))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF0FCE5E),
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}
