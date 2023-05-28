import 'package:auto_size_text/auto_size_text.dart';
import 'package:bansbari_reading_room/models/features.dart';
import 'package:bansbari_reading_room/registrationpage.dart';
import 'package:bansbari_reading_room/testimonial.dart';
import 'package:bansbari_reading_room/view/multilevelsidebar.dart';
import 'package:bansbari_reading_room/view/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'loginpage.dart';

class ShowPage extends StatelessWidget {
  const ShowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
      drawer:MultiLevelDrawer(
      backgroundColor: Color(0xFFc55a11),
      //rippleColor: Colors.green,
      subMenuBackgroundColor: Color(0xFFc65a20),
      header: Container(
        // Header for Drawer
        height: 150,
        //width: 150,
        child: Padding(
          padding: const EdgeInsets.only(top: 22.0),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/logo.jpg",
                    width: 100,
                    height: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("User Name"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Position")
                ],
              )),
        ),
      ),
      children: [
        // Child Elements for Each Drawer Item
        MLMenuItem(
            leading: Icon(Icons.engineering_rounded,
              color: Colors.black,),
            trailing: Icon(
              Icons.chevron_right,
            ),
            content: Text(
              "Admission",
            ),
            subMenuItems: [
              MLSubmenu(onClick: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Registration(),
                  ),
                );
              }, submenuContent: Text("New Admission")),
              MLSubmenu(onClick: () {}, submenuContent: Text("Re-Admission")),
            ],
            onClick: () {}),
        MLMenuItem(
            leading: Icon(
              Icons.receipt_outlined,
              color: Colors.black,
            ),
            trailing: Icon(
              Icons.chevron_right,
            ),
            content: Text("Report"),
            onClick: () {},
            subMenuItems: [
              MLSubmenu(onClick: () {}, submenuContent: Text("Day Report")),
              MLSubmenu(onClick: () {}, submenuContent: Text("Weekly Report")),
              MLSubmenu(onClick: () {}, submenuContent: Text("Monthly Report")),
              MLSubmenu(onClick: () {}, submenuContent: Text("Quaterly Report")),
              MLSubmenu(onClick: () {}, submenuContent: Text("Yearly Report")),
            ]),
        MLMenuItem(
          leading: Icon(Icons.notifications),
          content: Text("Notifications"),
          onClick: () {},
        ),
        MLMenuItem(
            leading: Icon(Icons.payment),
            trailing: Icon(Icons.arrow_right),
            content: Text(
              "Payments",
            ),
            subMenuItems: [
              MLSubmenu(onClick: () {}, submenuContent: Text("Online Payment")),
              MLSubmenu(onClick: () {}, submenuContent: Text("Cash Payment")),
            ],
            onClick: () {}),
        MLMenuItem(
          leading: Icon(Icons.login_outlined),
          content: Text("Log Out"),
          onClick: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginDemo(),
              ),
            );
          },
        ),
      ],
    ),
      appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.deepOrange,
          title: Center(
            child: Text('Bansbari Reading Room',style: TextStyle(color: Colors.black,fontSize: 30.sp),),

          )),
      body:
      ListView(
        children: [
          Container(
              height: 200.h,
            width: double.infinity,
            child: Image.asset('assets/images/libraryphoto.jpg',fit: BoxFit.cover,),
          ),
          SizedBox(height: 8.h,),
          Column(
            children: [
              Container(
                width: double.infinity,
                color: Color(0xFFc55a11),
                height: 20.h,
                child: Padding(
                  padding: EdgeInsets.only(right: 40,),
                  child: Center(child: Text('About BRR',style: TextStyle(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)),
                ),),
              SizedBox(height: 8,),
              Container(
                width: 500.w,
                child: Text('A reading space can help build literacy skills such as sentence structure, punctuation and grammar. This is because, when books are readily available to use, '
                    'students may be more likely to pick them up and read them, '
                    'which is fantastic for developing important skills in reading '
                    'and writing.Bansbari Reading Room is a place free of any distractions '
                    'where we provide comfortable space with peaceful ambiance to '
                    'a student for concentrated reading.',style: TextStyle(wordSpacing: 5),textAlign: TextAlign.justify),

              ),
            ],
          ),
          SizedBox(height: 20.h,),
          //Text('Features',style: TextStyle(color:Color.fromRGBO(440, 50, 60, 0.9),fontSize: 40),),
          Column(
            children: [
              Container(
                color: Color(0xFFc55a11),
                //height: 150.h,
                width: double.infinity,
                //color: Colors.cyan,
                child: Center(child: Text('Features',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.black),)),
                ),
            SizedBox(height: 10.h,),
            Container(
              height: 150.h,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  itemCount: features.length,
                  itemBuilder: (context,index){
                    //ScrollDirection:Axis.horizontal;
return Center(
  child:   Column(
    children: [
          Text(features[index].featurename,style: TextStyle(fontSize: 18.sp,color: Color(0xFF049898),fontWeight: FontWeight.w800),),
    ],
  ),
);//#049B9B
                  }
                  ),

                  ),
              Container(
                color: Colors.deepOrange,
                height: 200.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: testimonials.length,
                    itemBuilder: (context,index)
                {
                  return Row(
                    children: [
                      Container(
                         width: 180.w,
                        child: testimonials[index].imageUrl,
                      ),
                      Container(
                        child: Column(
                          children: [

                            Container(
                              width:250,
                                child: AutoSizeText(testimonials[index].voice, textAlign:TextAlign.justify,)),
                            SizedBox(height: 10.h,),
                            Container(
                              child: Row(
                                children: [
                                  Text(testimonials[index].sname),
                                  SizedBox(width: 30.w),
                                  Container(
                                      child: Text(testimonials[index].scourse)),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                }),
              ),

            ],
          ),
          Column(
            children: [
              Container(
                height: 150.h,
                width: double.infinity,
                color: Colors.greenAccent,
                child: Column(
                  children: [
                    Container(
                      height:50.h,
                        //width: double.infinity,
                        color: Colors.yellow,
                        child: Center(child: Text('CONTACT US',style: TextStyle(fontSize: 22.sp,fontWeight:FontWeight.bold,color: Colors.black),))),
                    Container(
                      child: Row(
                        children: [
                          Image.asset('assets/images/Fimg.jpg',height: 90.h,width: 150.w,),
                          SizedBox(width: 10.w,),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Container(
                              child: Column(
                                children: [
                                  AutoSizeText('Email:info@brr.com', textAlign:TextAlign.justify,),
                                  AutoSizeText('Phone:9855029847', textAlign:TextAlign.start,),
                                  AutoSizeText('Address:Bansbari-3,Kathmandu', textAlign:TextAlign.end,),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
