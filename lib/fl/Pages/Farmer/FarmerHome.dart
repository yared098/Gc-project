// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:cropest/Pages/Farmer/Pages/CropUpload.dart';
import 'package:cropest/fl/Pages/Farmer/Pages/CropUpload.dart';
import 'package:cropest/fl/Pages/Farmer/Pages/PageHistory.dart';
import 'package:cropest/fl/Pages/Farmer/Pages/request.dart';
import 'package:cropest/homepage.dart';
// import 'package:flutter_application_2/Pages/Farmer/Pages/CropUpload.dart';
// import 'package:flutter_application_2/Pages/Farmer/Pages/PageHistory.dart';
// import 'package:flutter_application_2/homepage.dart';

import 'Pages/newsPage.dart';

import 'package:flutter/material.dart';

class FarmerHomepage extends StatefulWidget {
  @override
  _FarmerHomepageState createState() => _FarmerHomepageState();
}

class _FarmerHomepageState extends State<FarmerHomepage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    NewsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 128, 200, 85),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                    child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(-3, 5),
                          blurRadius: 22,
                          spreadRadius: 6)
                    ],
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height / 2.3,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            right: 1,
                          ),
                          child: Image(
                            width: 70,
                            image: AssetImage(
                              "assets/c.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text(
                          'Safe Crop',
                          style: TextStyle(
                            fontSize: 28,
                            color: Color.fromARGB(255, 6, 47, 21),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                )),
                Expanded(
                    child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                ))
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 240, left: 10),
                height: 130,
                width: 340,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(-3, 5),
                        blurRadius: 22,
                        spreadRadius: 6)
                  ],
                  color: Color.fromARGB(255, 250, 250, 250),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.person),
                        backgroundColor: Colors.white,
                      ),
                      title: Text(
                        'Yared Fentahun',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 6, 47, 21),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    VerticalDivider(
                      // Added vertical divider
                      color: Color.fromARGB(255, 6, 47, 21),
                      thickness: 1,
                      width: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.landscape,
                              size: 30,
                              color: Color.fromARGB(255, 6, 47, 21),
                            ),
                            Text(
                              '40 Sqrt',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 6, 47, 21),
                              ),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          // Added vertical divider
                          color: Color.fromARGB(255, 6, 47, 21),
                          thickness: 1,
                          width: 30,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 30,
                              color: Color.fromARGB(255, 6, 47, 21),
                            ),
                            Text(
                              'Adama',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 6, 47, 21),
                              ),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          // Added vertical divider
                          color: Color.fromARGB(255, 6, 47, 21),
                          thickness: 10,
                          width: 30,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.person,
                              size: 30,
                              color: Color.fromARGB(255, 6, 47, 21),
                            ),
                            Text(
                              'DR Bamlak',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 6, 47, 21),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CropUploadPage()),
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage(
                          "assets/d.png",
                        ),
                      ),
                      Text(
                        'detect disease',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward_outlined,
                        size: 30,
                      )
                    ],
                  ),
                  height: 47,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 0),
                        blurRadius: 22,
                        spreadRadius: 6),
                  ], color: Colors.white),
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CropHistoryPage()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(33),
                          height: 30,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 0),
                                blurRadius: 22,
                                spreadRadius: 6),
                          ], color: Color.fromARGB(255, 128, 200, 85)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.article,
                                size: 50,
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'History',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NewsPage()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(33),
                          height: 30,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 0),
                                blurRadius: 22,
                                spreadRadius: 6),
                          ], color: Color.fromARGB(255, 128, 200, 85)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.article,
                                size: 50,
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'News',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RequestPage()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(33),
                          height: 30,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 0),
                                blurRadius: 22,
                                spreadRadius: 6),
                          ], color: Color.fromARGB(255, 128, 200, 85)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.article,
                                size: 50,
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Profile',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => Request()()),
                          // );
                        },
                        child: Container(
                          margin: EdgeInsets.all(33),
                          height: 30,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 0),
                                blurRadius: 22,
                                spreadRadius: 6),
                          ], color: Color.fromARGB(255, 128, 200, 85)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.article,
                                size: 50,
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Request',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
