

import 'package:bansbari_reading_room/home_page.dart';
import 'package:bansbari_reading_room/showpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'loginpage.dart';
import 'package:firebase_core/firebase_core.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(Home());
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 707),
      minTextAdapt: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child:  ShowPage(),
    );
  }
}
