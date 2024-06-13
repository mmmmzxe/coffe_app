// ignore_for_file: deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 25,
            color: Colors.brown,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create an account , It's Free",
                    style: TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(150, 121, 85, 72)),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(250, 243, 232, 229),
                          contentPadding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.person),
                            color: Colors.brown,
                          ),
                          hintText: "UserName",
                          hintStyle: TextStyle(
                            color: Colors.brown,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0)))),
                  SizedBox(height: 25.0),
                  TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(250, 243, 232, 229),
                          contentPadding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.email_outlined),
                            color: Colors.brown,
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            color: Colors.brown,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0)))),
                  SizedBox(height: 25.0),
                  TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(250, 243, 232, 229),
                          contentPadding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.lock_open),
                            color: Colors.brown,
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.brown,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0)))),
                  SizedBox(height: 25.0),
                  TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(250, 243, 232, 229),
                          contentPadding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.lock_open),
                            color: Colors.brown,
                          ),
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(
                            color: Colors.brown,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0)))),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.brown),
                      top: BorderSide(color: Colors.brown),
                      left: BorderSide(color: Colors.brown),
                      right: BorderSide(color: Colors.brown),
                    )),
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: double.infinity,
                  height: 60,
                  color: Colors.brown,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Login Now",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.brown),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
