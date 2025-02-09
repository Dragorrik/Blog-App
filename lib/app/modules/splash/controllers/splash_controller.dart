import 'package:blog_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // Wait for 3 seconds before navigating
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed(Routes.LOGIN);
    });
  }
}
