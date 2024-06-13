// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/itemsWidgets.dart';
import 'package:app/itemsWidgets2.dart';
import 'package:app/itemsWidgets3.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_hendleTabSelection);
    super.initState();
  }

  _hendleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.brown.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.brown.withOpacity(0.5),
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "It's Great Day For Coffee",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Color(0xFFE57734),
                            ),
                            Text(
                              "Sa Francisco , CA",
                              style: TextStyle(
                                  color: Colors.brown.withOpacity(0.5),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                padding: EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 160, 129, 118).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Find Your Coffee",
                      hintStyle:
                          TextStyle(color: Colors.brown.withOpacity(0.5)),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.brown.withOpacity(0.5),
                      )),
                ),
              ),
              TabBar(
                  controller: _tabController,
                  labelColor: Colors.brown,
                  unselectedLabelColor: Colors.brown,
                  isScrollable: true,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color(0xFFE57734),
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  labelPadding: EdgeInsets.symmetric(horizontal: 40),
                  tabs: [
                    Tab(
                      text: "Hot Coffee",
                    ),
                    Tab(
                      text: "Beans Coffee",
                    ),
                    Tab(
                      text: " Ice Coffee",
                    ),
                    Tab(
                      text: "Americano",
                    ),
                  ]),
              SizedBox(
                height: 10,
              ),
              Center(
                child: [
                  ItemsWidget2(),
                  ItemsWidget(),
                  ItemsWidget3(),
                  ItemsWidget(),
                ][_tabController.index],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.brown.shade200,
        backgroundColor: Colors.white.withOpacity(.1),
        animationDuration: Duration(milliseconds: 300),
        height: 50,
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(Icons.person, color: Colors.white),
          Icon(Icons.favorite, color: Colors.white),
          Icon(CupertinoIcons.cart, color: Colors.white),
        ],
      ),
    );
  }
}
