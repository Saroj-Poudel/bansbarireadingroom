import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Testimonial {
  final String imageUrl;
  final String voice;
  final String sname;
  final String scourse;
  Testimonial({
    required this.imageUrl,
    required this.sname,
    required this.scourse,
    required this.voice,
  });
}

List<Testimonial> testimonials = [
  Testimonial(
      imageUrl: 'assets/images/logo.jpg',
      sname: 'ROHIT SHARMA',
      scourse: 'MBBS',
      voice:
          'Bansbari reading room is one of he grate plateform to those who are willing to get ease environment for their study.I have spent 6 month their and got friendly environment from their.The features provided by the BRR is awesome and student oriented.I wish all the best for upcoming students as well and want to provide huge Thank you to the whole team of BRR.'),
  Testimonial(
      imageUrl: 'assets/images/logo.jpg',
      sname: 'SAROJ POUDEL',
      scourse: 'MCA',
      voice:
          'Bansbari reading room is one of he grate plateform to those who are willing to get ease environment for their study.I have spent 6 month their and got friendly environment from their.The features provided by the BRR is awesome and student oriented.I wish all the best for upcoming students as well and want to provide huge Thank you to the whole team of BRR.'),
  Testimonial(
      imageUrl: 'assets/images/logo.jpg',
      sname: 'SAURAV GURAGAIN',
      scourse: 'BTS',
      voice:
          'Bansbari reading room is one of he grate plateform to those who are willing to get ease environment for their study.I have spent 6 month their and got friendly environment from their.The features provided by the BRR is awesome and student oriented.I wish all the best for upcoming students as well and want to provide huge Thank you to the whole team of BRR.'),
];
