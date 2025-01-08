import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo and Title
              Image.asset('assets/images/com_icon.png', height: 80),
              const SizedBox(height: 10),
              const Text(
                'ezycourse',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const Text('The Best Online Learning Platform',
                  style: TextStyle(fontSize: 14)),

              const SizedBox(height: 30),

              // Email Field
              TextField(
                controller: controller.emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 20),

              // Password Field
              TextField(
                controller: controller.passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Remember Me Checkbox
              Obx(() => CheckboxListTile(
                    side: const BorderSide(
                        color: Colors.white, width: 2), // White border
                    activeColor: Colors.yellow, // Color when checked
                    checkColor: Colors.black,
                    title: const Text(
                      'Remember me',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    value: controller.rememberMe.value,
                    onChanged: (value) => controller.rememberMe.value = value!,
                  )),

              const SizedBox(height: 20),

              // Login Button
              Obx(() => ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed:
                        controller.isLoading.value ? null : controller.login,
                    child: controller.isLoading.value
                        ? const CircularProgressIndicator(color: Colors.black)
                        : const Text('Login'),
                  )),

              const SizedBox(height: 10),

              // Signup Navigation
              TextButton(
                onPressed: () => Get.toNamed('/register'),
                child: const Text(
                  'Don\'t have an account? Sign up!',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
