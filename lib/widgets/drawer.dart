import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://scontent.fisb4-2.fna.fbcdn.net/v/t39.30808-6/256532731_1509280216093760_5180569196667061745_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeF19myyaGhKhvY1YewZIX11W2I9HREVx_FbYj0dERXH8V-NJhQXznW9ZjLaYoBVzSPyDPGFp2-3xfD0Tf2JHTyR&_nc_ohc=7N4wPfAeS9cAX-4u-Ds&_nc_zt=23&_nc_ht=scontent.fisb4-2.fna&oh=00_AT9qTF1zZO1zMsTogSMd-JlHfvuBu2SfDYyjM8dwx3-uGw&oe=620E1568";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          // padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Raja Rehan"),
                accountEmail: Text("rehan.bscs4028@iiu.edu.pk"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
