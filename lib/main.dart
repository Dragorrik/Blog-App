import 'package:blog_app/app/routes/app_pages.dart';
import 'package:blog_app/constants/theme_data.dart';
import 'package:blog_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
          //backgroundColor: Colors.black,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      title: 'Flutter Blog App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.LOGIN,
      getPages: AppPages.routes,
    );
  }
}
