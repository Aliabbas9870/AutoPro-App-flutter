import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GalleryImagePickerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gallery Image Picker Example'),
        ),
        body: Center(
          child: GalleryImagePickerButton(),
        ),
      ),
    );
  }
}

class GalleryImagePickerButton extends StatelessWidget {
  Future<void> _pickImage2() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Do something with the picked image file
      File image = File(pickedFile.path);
      // You can use the 'image' variable to display the image or perform further operations
      // For example, you can use Image.file(image) to display the image.
      // Image.file(image),
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _pickImage2,
      child: Text('Select Image from Gallery'),
    );
  }
}


