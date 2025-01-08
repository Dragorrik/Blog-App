import 'package:blog_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isLoading = false.obs;
  var rememberMe = false.obs;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onClose() {
    emailController.clear();
    passwordController.clear();
    super.onClose();
  }

  Future<void> login() async {
    isLoading.value = true;
    try {
      await _auth.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      if (emailController.text == 'aarik@gmail.com') {
        Get.snackbar('Success', 'Login Successful,Admin',
            backgroundColor: Colors.black45,
            snackPosition: SnackPosition.BOTTOM);
        Get.offAllNamed(Routes.ADMIN_HOME);
      } else {
        Get.snackbar('Success', 'Login Successful,User',
            backgroundColor: Colors.blueGrey,
            snackPosition: SnackPosition.BOTTOM);
        Get.offAllNamed(Routes.USER_HOME);
      }
    } catch (e) {
      Get.snackbar('Error', e.toString(), snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}
