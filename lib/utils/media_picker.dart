import 'dart:developer';

import 'package:image_picker/image_picker.dart';

pickVideo(source) async {
  final ImagePicker imagePicker = ImagePicker();

  XFile? file = await imagePicker.pickVideo(source: source);

  if (file != null) {
    return await file.readAsBytes();
  }
  log("No Video Selected");
}

pickImage(source) async {
  final ImagePicker imagePicker = ImagePicker();

  XFile? file = await imagePicker.pickImage(source: source);

  if (file != null) {
    return await file.readAsBytes();
  }
  log("No Image Selected");
}
