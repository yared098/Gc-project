// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cropest/Pages/Farmer/Pages/PageHistory.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Section 1
          Container(
            height: 100,
            child: Container(
              color: Colors.green,
              child: Center(
                child: Text(
                  'Safe crop',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Section 2
          Expanded(
            flex: 2,
            child: Container(
              height: 50,
              padding: EdgeInsets.all(10),
              color: Colors.green,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 250, 250, 250),
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Text('YF'),
                          ),
                          title: Text(
                            'Yared Fentahun',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        VerticalDivider(
                          // Added vertical divider
                          color: Colors.black,
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
                                  color: Colors.black,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '40 Sqrt',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              // Added vertical divider
                              color: Colors.black,
                              thickness: 1,
                              width: 30,
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Adama',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              // Added vertical divider
                              color: Colors.black,
                              thickness: 10,
                              width: 30,
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'DR Bamlak',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),

                  // Bottom
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: [
                          Container(
                            color: Colors.green,
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CropHistoryPage()),
                              );
                            },
                            child: Container(
                              color: Colors.green,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.history,
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
                                MaterialPageRoute(
                                    builder: (context) => CropHistoryPage()),
                              );
                            },
                            child: Container(
                              color: Colors.green,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.person,
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CropHistoryPage()),
                              );
                            },
                            child: Container(
                              color: Colors.green,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.request_page,
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
            ),
          ),
        ],
      ),
    );
  }
}
