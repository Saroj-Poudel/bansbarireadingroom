import 'package:bansbari_reading_room/loginpage.dart';
import 'package:bansbari_reading_room/textformatter.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';
import 'package:dob_input_field/dob_input_field.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  _RegistrationState(){
    _selectedGender=_genderList[1];
    _selectedPackage=_packageList[2];
  }
  final _packageList=["Daily-200","Weekly-1000","Monthly-3000","Quarterly-8000","Yearly-30000"];
  String?_selectedPackage="";
  bool loading= false;
  final databaseRef = FirebaseDatabase.instance.ref('Student Registration');
  final _genderList=["Male","Female","Other"];
  String? _selectedGender= "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFE75F2D),
        title: Center(
          child: Text(
            "Bansbari Reading Room",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Image.asset('assets/images/logo.jpg')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Your Full Name'),
                inputFormatters: [
                  UpperCaseTextFormatter(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text('Gender'),
                  SizedBox(width: 20,),
                  DropdownButton(
                    value: _selectedGender,
                    items: _genderList.map((e) => DropdownMenuItem(child: Text(e),value: e,)).toList(),
                    /*_genderList.map(
                            (e)=> {
                              DropdownMenuItem(
                       value: e,
                        child: Text(e),
                            )).toList(),*/
                    onChanged: (gend) {
                      setState(() {
                        _selectedGender=gend as String;
                      });
                    },
                  ),
                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Current Address ',
                    hintText: 'Enter Your address'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Permanent Address ',
                    hintText: 'Enter Your address'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  // icon: Icon(Icons.phone_iphone),
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Your Mobile Number',
                  prefixText: '+977-',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  // icon: Icon(Icons.phone_iphone),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter Email',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DOBInputField(
                inputDecoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12, width: 15.0),
                  ),
                  labelText: "DOB",
                  hintText: "DOB",
                ),
                firstDate: DateTime(1990),
                lastDate: DateTime.now(),
                showLabel: true,
                showCursor: true,
                autovalidateMode: AutovalidateMode.always,
                fieldHintText: "DOB",
                fieldLabelText: "DOB",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Preparation for ',
                    hintText: 'Your Field'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text('Choose Package'),
                  SizedBox(width: 20,),
                  DropdownButton(value: _selectedPackage,items:_packageList.map((e) => DropdownMenuItem(child: Text(e),value: e,)).toList(),
                  onChanged: (pack){
                    setState(() {
                      _selectedPackage=pack as String;
                    });
                  },
                  )
                ],
              ),


            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Secondary Contact Person ',
                    hintText: 'Contact Person Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number ',
                    hintText: 'Phone Number',
                prefixText: '+977-',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                    hintText: 'Re-enter password'),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoginDemo()));
                },
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
