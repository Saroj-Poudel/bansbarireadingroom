
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color(0xFFE1DCC5).withOpacity(1),
appBar: AppBar(
  backgroundColor: Color(0xFFE75F2D),
  title: Center(child: Text('Bansbari Reading Room',style: TextStyle(fontSize: 20,),)),
  elevation: 0, // to change box shadow
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Icon(Icons.search_off_outlined),
    ),
  ],

),
      body: Container
        (
        child: Column(
          children: [
            Container(
              child: Column(

                children: [
                  AppBar(
                    title: Text('Menu Area',style: TextStyle(color: Colors.red),),
                    backgroundColor: Colors.blueGrey,
                    toolbarHeight: 50,
                    toolbarTextStyle: TextStyle(fontSize: 10),

                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/libraryphoto.jpg',),
                      SizedBox(height: 30,),
                      Container(
                        height: 210,
                        width: double.infinity,
                        child: Column(
                        children: [
                          Row(
                            children: [
                              ListView(
                        children: <Widget>[
                        ListTile(
                        leading: Icon(Icons.map),
                        title: Text('AC Room'),
                      ),
                      ListTile(
                        title: Text('Loung To Rest'),
                      ),
                        ListTile(
                          title: Text('Loung To Rest'),),
                      ListTile(
                        title: Text('Kitchen With Fridge'),
                      ),
                      ListTile(
                        title: Text('Adequate Parking'),
                      ),
                      ListTile(
                        title: Text('Comfortable Chair'),
                      ),
                      ListTile(
                        title: Text('Fast WIFI'),
                      ),
                      ListTile(
                        title: Text('Good Lighting'),
                      ),
                      ListTile(
                        title: Text('Microwave'),
                      ),
    ],
                              //Image.asset('assets/images/serviceslist.jpg',),
                              ), ],
                          ),
                        ],
                      ),


                      ),
                    ],
                  )
                ],

              ),
              
            )
          ],
        ),

      ),

    );

  }
}
