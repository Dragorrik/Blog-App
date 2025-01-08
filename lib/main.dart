import 'package:blog_app/app/routes/app_pages.dart';
import 'package:blog_app/constants/cloudinary_const.dart';
import 'package:blog_app/constants/theme_data.dart';
import 'package:blog_app/firebase_options.dart';
import 'package:cloudinary_dart/cloudinary.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Create a Cloudinary instance and set your cloud name.
var cloudinary =
    Cloudinary.fromStringUrl('cloudinary://$apiKey:$apiSecret@$cloudName');

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // Get.put(AuthController());

  cloudinary.config.urlConfig.secure = true;
  //upload();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        inputDecorationTheme: kIconThemeData,
        scaffoldBackgroundColor: Color(0XFF115C67),
        textTheme: kTextThemeData,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0XFF115C67),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      title: 'Flutter Blog App',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.LOGIN,
      getPages: AppPages.routes,
    );
  }
}
