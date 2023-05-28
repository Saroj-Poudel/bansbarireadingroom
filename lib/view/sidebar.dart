import 'package:bansbari_reading_room/loginpage.dart';
import 'package:bansbari_reading_room/registrationpage.dart';
import 'package:bansbari_reading_room/showpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideBarScreen extends StatelessWidget {
  const SideBarScreen({Key? key}) : super(key: key);
  final List drawerMenuListName = const [
    {
      "leading": Icon(
        Icons.engineering_rounded,
        color: Colors.black,
      ),
      "title": "Admission",
      "trailing": Icon(
        Icons.chevron_right,
      ),
      "action_id": 1,
    },
    {
      "leading": Icon(
        Icons.receipt_outlined,
        color: Colors.black,
      ),
      "title": "View Report",
      "trailing": Icon(
        Icons.chevron_right,
      ),
      "action_id": 2,
    },
    {
      "leading": Icon(
        Icons.login_outlined,
        color: Colors.black,
      ),
      "title": "Log Out",
      "trailing": Icon(
        Icons.chevron_right,
      ),
      "action_id": 3,
    },
  ];
  //#E8690E
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: 230.w,
      child: Drawer(
        backgroundColor: Color(0xFFc55a11),
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/logo.jpg')),
              title: Text('UserName'),
              subtitle: Text('Position'),
            ),
            const SizedBox(
              height: 2,
            ),
            ...drawerMenuListName.map((sideMenuData) {
              return ListTile(
                leading: sideMenuData['leading'],
                title: Text(
                  sideMenuData['title'],
                ),
                trailing: sideMenuData['trailing'],
                onTap: () {
                  Navigator.pop(context);

                  if (sideMenuData['action_id'] == 1) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Registration(),
                      ),
                    );
                  } else if (sideMenuData['action_id'] == 2) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ShowPage(),
                      ),
                    );
                  } else if (sideMenuData['action_id'] == 3) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginDemo(),
                      ),
                    );
                  }
                },
              );
            }),
          ],
        ),
      ),
    ));
  }
}
