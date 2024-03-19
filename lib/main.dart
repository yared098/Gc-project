// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'fl/Pages/Farmer/FarmerHome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'BAUHS93',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 128, 200, 85),
      // appBar: AppBar(
      //   title: Text('Page 1'),
      // ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 128, 200, 85),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(100),
                ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(top: 200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform.scale(
                        scale: 5,
                        child: Image(
                          width: 70,
                          image: AssetImage(
                            "assets/b.png",
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          right: 39,
                        ),
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
                                  "assets/a.png",
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Safe Crop',
                              style: TextStyle(
                                fontSize: 28,
                                color: Color.fromARGB(255, 6, 47, 21),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 100),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(5, -3),
                      blurRadius: 22,
                      spreadRadius: 6)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Wellcome to safe crop',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 30, left: 30, right: 30),
                    child: Text(
                      'Use this app to classify crop disease and get treatment instructions ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontFamily: 'Bauhaus 93'),
                        ),
                      ),
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 3),
                              blurRadius: 22,
                              spreadRadius: 6)
                        ],
                        color: Color.fromARGB(255, 86, 144, 51),
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

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 128, 200, 85),
      body: Column(
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
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(120),
              ),
              color: Colors.white,
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Well Come to',
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 6, 47, 21),
                ),
              ),
              SizedBox(
                height: 22,
              ),
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
            height: MediaQuery.of(context).size.height / 2.6,
            width: MediaQuery.of(context).size.width,
          )),
          Expanded(
              child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    'login',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(-3, 5),
                          blurRadius: 22,
                          spreadRadius: 1)
                    ],
                  ),
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 55,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Colors.grey),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Name'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(-3, 5),
                          blurRadius: 22,
                          spreadRadius: 6)
                    ],
                  ),
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone, color: Colors.grey),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'phone'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(-3, 5),
                          blurRadius: 22,
                          spreadRadius: 6)
                    ],
                  ),
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key, color: Colors.grey),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'password'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FarmerHomepage()),
                    )
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 220),
                    child: Center(
                      child: Text(
                        'login',
                        style: TextStyle(
                          fontSize: 27.0,
                          color: Color.fromARGB(255, 6, 47, 21),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    width: 100,
                    height: 45,
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
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Text("Don't have an account? "),
                    TextButton(
                      onPressed: () {
                        // Sign up button action
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Sign Up Page'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                ),
              ),
              child: Center(
                child: Text(
                  'Sign Up Section',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Sign up button action
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => FarmerHomepage()),
                      // );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FarmerHomepage()),
                      );
                    },
                    child: Text('Sign Up'),
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
