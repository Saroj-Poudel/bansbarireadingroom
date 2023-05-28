import 'package:bansbari_reading_room/Utils/utilities.dart';
import 'package:bansbari_reading_room/showpage.dart';
import 'package:bansbari_reading_room/view/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  final _formkey=GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _auth= FirebaseAuth.instance;
  int logintest=0;
  void login(){

    _auth.signInWithEmailAndPassword(email: emailController.text,
        password: passwordController.text).then((value){
          logintest=1;
    }).onError((error, stackTrace){
      logintest=0;
      Utilities().toastMessage(error.toString());
    });
    if(logintest==1) {
      if (_formkey.currentState!.validate()) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) =>
            ShowPage()));
      }
    }
  }
  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope( // it is used to create exit process on android while pressing back button in android mobile
      onWillPop: ()async{
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
                key:_formkey,
                child: Column
                  (
                  children: [
                    Padding(
                      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        keyboardType:TextInputType.emailAddress ,
                        controller: emailController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            hintText: 'Enter valid email id as abc@gmail.com'),
                        validator: (value){
                          if(value!.isEmpty){
                            return 'enter email';
                          }
                          else{
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
        }
        else {
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
                    login();
                   /* if(logintest==1) {
                      if (_formkey.currentState!.validate()) {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) =>
                            ShowPage()));
                      }
                    }*/
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text('New User? '),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Signup()));
                },
                child: Text(
                  'Create Account',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
