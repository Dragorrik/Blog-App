import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_home_controller.dart';

class UserHomeView extends GetView<UserHomeController> {
  const UserHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserHomeView'),
        centerTitle: true,
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
