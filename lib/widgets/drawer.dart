import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://avatars.githubusercontent.com/u/84454648?v=4";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("sexy log"),
                  accountEmail: Text("sexy@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                  ),
                  title: Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white

                  ),),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.mail,
                    color: Colors.white,
                  ),
                  title: Text("Mail",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white

                  ),),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.settings,
                    color: Colors.white,
                  ),
                  title: Text("settings",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white

                  ),),
                ),
          ],
        ),
      ),
    );
  }
}
