

import 'package:bansbari_reading_room/home_page.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';

void main(){
  runApp(Home());
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}
