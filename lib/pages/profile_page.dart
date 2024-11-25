import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import 'orders_page.dart';

class  ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            //profile Image
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 15),
              child: CircleAvatar(
                radius: 62,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const CircleAvatar(
                  radius: 60,
                  foregroundImage: NetworkImage("https://img.freepik.com/free-vector/flat-floral-facebook-frame-profile-pic_23-2148962057.jpg?t=st=1732340299~exp=1732343899~hmac=379aa004791fc856df7b191cb5f7f8e6d2ae896ea081cd603622be0b4914a3fc&w=740"),
                ),
              ),
            ),
            Center(
              child: Text(
                "Emma Watson",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Center(
              child: Text(
                "emmawatson@gmail.com",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),

            const SizedBox(height: 25),
            ListTile(
              title: const Text("My Orders"),
              leading: Icon(CupertinoIcons.bag_fill),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const OrdersPage(),
                ));
              },
            ),
            ListTile(
              title: const Text("About us & Privacy"),
              leading: Icon(CupertinoIcons.question_circle_fill),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Logout"),
              leading: Icon(CupertinoIcons.cloud_upload_fill),
              onTap: () {},
            )
          ],
        )
    );
  }
}
