import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CropUploadPage extends StatefulWidget {
  @override
  _CropUploadPageState createState() => _CropUploadPageState();
}

class _CropUploadPageState extends State<CropUploadPage> {
  String? selectedCropType;
  String? imagePath;
  String? selectedTemperature;
  String? selectedAge;

  Future getImageFromGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        imagePath = pickedImage.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Crop Upload Page'),
      // ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.green],
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CircleAvatar(
                  child: Icon(Icons.upload_file),
                ),
                SizedBox(
                  height: 40,
                ),
                DropdownButton<String>(
                  value: selectedCropType,
                  hint: Text('Select Crop Type'),
                  onChanged: (newValue) {
                    setState(() {
                      selectedCropType = newValue;
                    });
                  },
                  items: [
                    DropdownMenuItem(
                      value: 'Maize',
                      child: Text('Maize'),
                    ),
                    // DropdownMenuItem(
                    //   value: 'Wheat',
                    //   child: Text('Wheat'),
                    // ),
                    DropdownMenuItem(
                      value: 'pests',
                      child: Text('pests'),
                    ),
                    // DropdownMenuItem(
                    //   value: 'Maize2',
                    //   child: Text('Maize2'),
                    // ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  'Crop Information',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                DropdownButton<String>(
                  value: selectedTemperature,
                  hint: Text('Select Temperature'),
                  onChanged: (newValue) {
                    setState(() {
                      selectedTemperature = newValue;
                    });
                  },
                  items: [
                    for (int i = 1; i <= 40; i++)
                      DropdownMenuItem(
                        value: i.toString(),
                        child: Text(i.toString() + ' degree'),
                      ),
                  ],
                ),
                SizedBox(height: 10.0),
                DropdownButton<String>(
                  value: selectedAge,
                  hint: Text('Select Crop Age'),
                  onChanged: (newValue) {
                    setState(() {
                      selectedAge = newValue;
                    });
                  },
                  items: [
                    for (int i = 1; i <= 12; i++)
                      DropdownMenuItem(
                        value: i.toString(),
                        child: Text(i.toString() + ' month'),
                      ),
                  ],
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () => getImageFromGallery(),
                  child: Text('Select Image'),
                ),
                SizedBox(height: 20.0),
                imagePath != null
                    ? Image.file(
                        File(imagePath!),
                        height: 200.0,
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.ads_click),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
