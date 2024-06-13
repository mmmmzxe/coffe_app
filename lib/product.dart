import 'package:app/plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {
  @override
  String img, title, price, oldprice;
  SingleItemScreen(this.img, this.title, this.price, this.oldprice);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .6,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              "assest/$img.png",
            ),
            fit: BoxFit.fill,
          )),

        ),
        Positioned(left: 30 , top: 30 +MediaQuery.of(context).padding.top,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: ClipOval(child: Container(
              height: 42, width: 41,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 158, 67, 10), 
                
              ),
              child: Center(
                child: Icon(Icons.arrow_back , color:Colors.white),
              ),
            ),),
          )
      ),
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * .4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromARGB(253, 243, 234, 232).withOpacity(0.4),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                      color:
                          Color.fromARGB(255, 175, 157, 150).withOpacity(0.2),
                      offset: Offset(0, -4),
                      blurRadius: 8)
                ]),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Row(children: [
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        img,
                        style: TextStyle(
                            fontSize: 31,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(150, 121, 85, 72),
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  )),
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.favorite,
                        color: Color.fromARGB(255, 158, 67, 10),
                        size: 30,
                      ))
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, right: 30, left: 30),
                child: Row(
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                          color: Color.fromARGB(255, 158, 67, 10),
                          fontSize: 27,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      oldprice,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(150, 121, 85, 72),
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              AddButton(),
              SizedBox(
                height: 35,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                    color: Color.fromARGB(253, 243, 234, 232).withOpacity(0.4),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(242, 245, 243, 243),
                          offset: Offset(0, -4),
                          blurRadius: 13)
                    ]),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(color: Colors.brown, fontSize: 14),
                        ),
                        Text(price,
                            style: TextStyle(
                                color: Color.fromARGB(255, 158, 67, 10),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ],
                    )),
                    Material(
                      color: Color.fromARGB(255, 158, 67, 10),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Add To Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(CupertinoIcons.cart, color: Colors.white)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        )
      ]),
    );
  }
}
