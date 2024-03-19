// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cropest/Pages/Farmer/Pages/CropUpload.dart';
import 'package:cropest/Pages/Farmer/Pages/Historypage.dart';
import 'package:cropest/Pages/Farmer/Pages/newsPage.dart';
import 'package:cropest/homepage.dart';
import 'package:flutter/material.dart';

class FarmerHomepage extends StatefulWidget {
  @override
  _FarmerHomepageState createState() => _FarmerHomepageState();
}

class _FarmerHomepageState extends State<FarmerHomepage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    CropUploadPage(),
    HomePage(),
    NewsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text('Crop Upload'),
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                  Navigator.pop(context); // Close the drawer
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('History'),
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                  Navigator.pop(context); // Close the drawer
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('News'),
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                  Navigator.pop(context); // Close the drawer
                });
              },
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.upload),
            label: 'Upload',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'News',
          ),
        ],
      ),
    );
  }
}
