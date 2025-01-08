import 'package:blog_app/app/modules/admin_home/controllers/admin_home_controller.dart';
import 'package:blog_app/app/modules/login/controllers/login_controller.dart';
import 'package:blog_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AdminHomeView extends GetView<AdminHomeController> {
  final LoginController _loginController = Get.find();
  AdminHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AdminHomeView'),
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
          'AdminHomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
