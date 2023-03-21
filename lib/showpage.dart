import 'package:bansbari_reading_room/models/features.dart';
import 'package:bansbari_reading_room/testimonial.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowPage extends StatelessWidget {
  const ShowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.deepOrange,
          title: Center(
            child: Text('Bansbari Reading Room',style: TextStyle(color: Colors.black,fontSize: 30),),

          )),
      body: ListView(
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
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Center(child: Text('Features',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.black),)),
                ),
                ),
            SizedBox(height: 10.h,),
            Container(
              height: 150.h,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  itemCount: features.length,
                  itemBuilder: (context,index){
                    //ScrollDirection:Axis.horizontal;
return Column(
  children: [
        Center(child: Text(features[index].featurename,style: TextStyle(fontSize: 18.sp,color: Color(0xFF049898),fontWeight: FontWeight.w800),)),
  ],
);//#049B9B
                  }
                  ),

                  ),
              Container(
                color: Colors.deepOrange,
                height: 250.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: testimonials.length,
                    itemBuilder: (context,index)
                {
                  return Row(
                    children: [
                      Text(testimonials[index].imageUrl),
                      Container(
                        child: Column(
                          children: [
                            Text(testimonials[index].voice),
                            Container(
                              child: Row(
                                children: [
                                  Text(testimonials[index].sname),
                                  SizedBox(width: 30.w),
                                  Container(
                                    width: 300.w,
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
              )

            ],
          )
        ],
      ),
    );
  }
}
