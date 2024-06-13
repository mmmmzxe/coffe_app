// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        // ignore: deprecated_member_use
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.brown,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Login in Your Account",
                        style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(150, 121, 85, 72)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(250, 243, 232, 229),
                                contentPadding:
                                    EdgeInsets.fromLTRB(25, 20, 25, 20),
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
                                    borderRadius:
                                        BorderRadius.circular(25.0)))),
                        SizedBox(height: 25.0),
                        TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(250, 243, 232, 229),
                                contentPadding:
                                    EdgeInsets.fromLTRB(25, 20, 25, 20),
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
                                    borderRadius:
                                        BorderRadius.circular(25.0)))),
                        SizedBox(height: 25.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
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
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.brown),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Forget Password?",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 100),
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assest/7.png"), fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
