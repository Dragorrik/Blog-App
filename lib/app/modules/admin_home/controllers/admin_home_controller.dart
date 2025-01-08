import 'package:get/get.dart';
import 'dart:io';
import 'package:blog_app/models/post_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:image_picker/image_picker.dart';

class AdminHomeController extends GetxController {
  final TextEditingController titleController = TextEditingController();
  var selectedImage = Rx<File?>(null);

  Future<String?> uploadImage(File image) async {
    final uri = Uri.parse(
        "https://api.cloudinary.com/v1_1/YOUR_CLOUD_NAME/image/upload");

    var request = http.MultipartRequest('POST', uri)
      ..fields['upload_preset'] = 'YOUR_UPLOAD_PRESET'
      ..files.add(await http.MultipartFile.fromPath('file', image.path));

    var response = await request.send();
    if (response.statusCode == 200) {
      var responseData = await response.stream.bytesToString();
      var json = jsonDecode(responseData);
      return json['secure_url'];
    }
    return null;
  }

  Future<void> createPost() async {
    String? imageUrl;
    if (selectedImage.value != null) {
      imageUrl = await uploadImage(selectedImage.value!);
    }

    final post = PostModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: titleController.text,
      imageUrl: imageUrl,
      createdAt: DateTime.now(),
    );

    await FirebaseFirestore.instance
        .collection('posts')
        .doc(post.id)
        .set(post.toMap());

    titleController.clear();
    selectedImage.value = null;
    Get.snackbar('Success', 'Post created successfully!');
  }

  Future<void> pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    }
  }
}
