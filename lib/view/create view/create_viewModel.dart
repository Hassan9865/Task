import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class CreateViewmodel extends BaseViewModel {
  final ImagePicker _picker = ImagePicker();
  File? image;

  Future<void> pickImageFromGallery() async {
    try {
      final XFile? pickedImage =
          await _picker.pickImage(source: ImageSource.gallery);
      if (pickedImage == null) return;

      final File imageTemp = File(pickedImage.path);
      image = imageTemp; // Set the selected image
      notifyListeners(); // Notify listeners to update the UI
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<void> captureImageWithCamera() async {
    try {
      final XFile? capturedImage =
          await _picker.pickImage(source: ImageSource.camera);
      if (capturedImage == null) return;

      final File imageTemp = File(capturedImage.path);
      image = imageTemp; // Set the captured image
      notifyListeners(); // Notify listeners to update the UI
    } on PlatformException catch (e) {
      print('Failed to capture image: $e');
    }
  }
}
