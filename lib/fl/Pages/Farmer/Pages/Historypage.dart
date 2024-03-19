import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History Page'),
      ),
      body: ListView.builder(
        itemCount: 5, // Replace with your desired item count
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
                'assets/images/image_$index.jpg'), // Replace with your image path
            title: Text('Title $index'),
            subtitle: Text('Description $index'),
          );
        },
      ),
    );
  }
}
