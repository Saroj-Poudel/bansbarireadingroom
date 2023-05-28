import 'package:bansbari_reading_room/Utils/utilities.dart';
import 'package:bansbari_reading_room/loginpage.dart';
import 'package:bansbari_reading_room/registrationpage.dart';
import 'package:bansbari_reading_room/showpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // it is used to create exit process on android while pressing back button in android mobile
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
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
              Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                              hintText:
                                  'Enter valid email id as abc@gmail.com'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'enter email';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15, bottom: 0),
                        //padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              hintText: 'Enter secure password'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'enter password';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      _auth.createUserWithEmailAndPassword(email: emailController.text.toString(),
                          password: passwordController.text.toString()
                      ).then((value){
                        
                      }).onError((error, stackTrace){
                        Utilities().toastMessage(error.toString());
                      });
                      /*Navigator.push(context,
                          MaterialPageRoute(builder: (_) => LoginDemo()));*/
                    }
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
