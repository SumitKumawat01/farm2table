import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl="https://fastly.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI";
    return Drawer(

      child:Container(
        color: Colors.deepPurple[200],
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin:EdgeInsets.zero,
                  accountName: Text("Soumya Verma"),
                  accountEmail: Text("av1106015@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
              color: Colors.white),

              title: Text("Home" ,
                style: TextStyle(
                color:Colors.white,
              ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                  color: Colors.white),

              title: Text("Profile" ,
                style: TextStyle(
                  color:Colors.white,
                ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.question_circle_fill,
                  color: Colors.white),

              title: Text("About Us" ,
                style: TextStyle(
                  color:Colors.white,
                ),),
            ),
          ],

        ),
      ),
    );
  }
}
