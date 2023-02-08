import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mydrawer extends StatelessWidget {
  const mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.deepPurple,
      child: ListView(children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                accountName: Text("prajakta chavan"),
                accountEmail: Text("prajakta2601@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/hruta.jpeg")))),
        ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            )),
        ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "profile",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            )),
        ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ))
      ]),
    ));
  }
}
