import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  final List<NewsItem> newsItems = [
    NewsItem(
      title: 'Crop Disease Outbreak',
      message:
          'A new disease has been detected in wheat crops. Farmers are advised to take precautionary measures.',
      date: 'January 14, 2024',
      area: 'Local',
      category: 'Crop',
    ),
    NewsItem(
      title: 'Pests Infestation Alert',
      message:
          'The region is experiencing a surge in locust swarms. Farmers should be vigilant and report any sightings.',
      date: 'January 12, 2024',
      area: 'National',
      category: 'Pests',
    ),
    NewsItem(
      title: 'New Pest-resistant Corn Variety',
      message:
          'Researchers have developed a genetically modified corn variety that shows resistance to common pests.',
      date: 'January 10, 2024',
      area: 'Global',
      category: 'Crop',
    ),
    // Add more news items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('News Page'),
      // ),
      body: ListView.builder(
        itemCount: newsItems.length,
        itemBuilder: (BuildContext context, int index) {
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return NewsCard(
                  newsItem: newsItems[index], constraints: constraints);
            },
          );
        },
      ),
    );
  }
}

class NewsItem {
  final String title;
  final String message;
  final String date;
  final String area;
  final String category;

  NewsItem({
    required this.title,
    required this.message,
    required this.date,
    required this.area,
    required this.category,
  });
}

class NewsCard extends StatelessWidget {
  final NewsItem newsItem;
  final BoxConstraints constraints;

  const NewsCard({required this.newsItem, required this.constraints});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double titleFontSize = screenWidth * 0.04;
    final double messageFontSize = screenWidth * 0.035;
    final double dateAreaFontSize = screenWidth * 0.03;

    return Card(
      margin: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04, vertical: screenHeight * 0.02),
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  newsItem.title,
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: _getCategoryColor(newsItem.category),
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.02,
                      vertical: screenHeight * 0.01),
                  child: Text(
                    newsItem.category,
                    style: TextStyle(
                      fontSize: dateAreaFontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              newsItem.message,
              style: TextStyle(fontSize: messageFontSize),
            ),
            SizedBox(height: screenHeight * 0.02),
            Row(
              children: [
                Icon(Icons.calendar_today, size: dateAreaFontSize),
                SizedBox(width: screenWidth * 0.01),
                Text(newsItem.date,
                    style: TextStyle(fontSize: dateAreaFontSize)),
                SizedBox(width: screenWidth * 0.02),
                Icon(Icons.location_on, size: dateAreaFontSize),
                SizedBox(width: screenWidth * 0.01),
                Text(newsItem.area,
                    style: TextStyle(fontSize: dateAreaFontSize)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color _getCategoryColor(String category) {
    if (category == 'Crop') {
      return Colors.green;
    } else if (category == 'Pests') {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }
}
