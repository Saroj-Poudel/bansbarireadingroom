
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<dynamic> items=['Ac ROOM', 'Parking'];
    return Scaffold(
      backgroundColor: Color(0xFFE1DCC5).withOpacity(1),
      appBar: AppBar(
        backgroundColor: Color(0xFFE75F2D),
        title: Center(
            child: Text(
          'Bansbari Reading Room',
          style: TextStyle(
            fontSize: 20,
          ),
        )),
        elevation: 0, // to change box shadow
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search_off_outlined),
          ),
          Icon(Icons.add_a_photo_sharp),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 500,
              child: Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.blueGrey,
                    //toolbarHeight: 50,
                   // toolbarTextStyle: TextStyle(fontSize: 10),
                  ),
                  Container(
                    //height: 300,
                    child: Column(
                      children: [
                       Image.asset(
                         'assets/images/libraryphoto.jpg',
                       ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
