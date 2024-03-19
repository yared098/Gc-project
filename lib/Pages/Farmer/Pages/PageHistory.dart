import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CropHistoryPage extends StatelessWidget {
  final List<CropHistoryItem> cropHistory = [
    CropHistoryItem(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlo_7KWXmp1GZMqnW_5KNQ-IRwJC8TDkKqUg-3dLCDzA&s',
      cropName: 'Corn',
      detectionResult: '78% detected',
      dateTime: DateTime(2024, 1, 14, 10, 30),
      location: 'Wolkite zone',
    ),
    CropHistoryItem(
      imageUrl:
          'https://blog.plantwise.org/wp-content/uploads/sites/7/2017/06/maize-stalk-borer.jpg',
      cropName: 'Wheat',
      detectionResult: '92% detected',
      dateTime: DateTime(2023, 12, 28, 14, 15),
      location: 'Adama Zone',
    ),
    CropHistoryItem(
      imageUrl:
          'https://blog.plantwise.org/wp-content/uploads/sites/7/2017/06/maize-stalk-borer.jpg',
      cropName: 'Wheat',
      detectionResult: '92% detected',
      dateTime: DateTime(2023, 12, 28, 14, 15),
      location: 'Adama Zone',
    ),
    CropHistoryItem(
      imageUrl:
          'https://blog.plantwise.org/wp-content/uploads/sites/7/2017/06/maize-stalk-borer.jpg',
      cropName: 'Wheat',
      detectionResult: '92% detected',
      dateTime: DateTime(2023, 12, 28, 14, 15),
      location: 'Adama Zone',
    ),
    // Add more crop history items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop History'),
      ),
      body: ListView.builder(
        itemCount: cropHistory.length,
        itemBuilder: (BuildContext context, int index) {
          return CropHistoryCard(item: cropHistory[index]);
        },
      ),
    );
  }
}

class CropHistoryItem {
  final String imageUrl;
  final String cropName;
  final String detectionResult;
  final DateTime dateTime;
  final String location;

  CropHistoryItem({
    required this.imageUrl,
    required this.cropName,
    required this.detectionResult,
    required this.dateTime,
    required this.location,
  });
}

class CropHistoryCard extends StatelessWidget {
  final CropHistoryItem item;

  const CropHistoryCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CachedNetworkImage(
                imageUrl: item.imageUrl,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              item.cropName,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Detection Result: ${item.detectionResult}',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Date & Time: ${item.dateTime.toString()}',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Location: ${item.location}',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
