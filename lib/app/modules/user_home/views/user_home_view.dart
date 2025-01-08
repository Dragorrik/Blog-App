import 'package:blog_app/app/modules/login/controllers/login_controller.dart';
import 'package:blog_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/user_home_controller.dart';

class UserHomeView extends GetView<UserHomeController> {
  final LoginController _loginController = Get.find();
  UserHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserHomeView'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              _loginController.logout();
              Get.toNamed(Routes.LOGIN);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'UserHomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
