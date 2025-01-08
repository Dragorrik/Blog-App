import 'package:get/get.dart';

import '../modules/admin_home/bindings/admin_home_binding.dart';
import '../modules/admin_home/views/admin_home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/user_home/bindings/user_home_binding.dart';
import '../modules/user_home/views/user_home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_HOME,
      page: () => AdminHomeView(),
      binding: AdminHomeBinding(),
    ),
    GetPage(
      name: _Paths.USER_HOME,
      page: () => UserHomeView(),
      binding: UserHomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
