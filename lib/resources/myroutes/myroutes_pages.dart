import 'package:gangoli_shivalya/View/screens/HomeScreen/home_binding.dart';
import 'package:gangoli_shivalya/View/screens/HomeScreen/home_screen.dart';
import 'package:gangoli_shivalya/View/screens/LoginPage/login_binding.dart';

import 'package:gangoli_shivalya/View/splashpage/splash_binding.dart';
import 'package:gangoli_shivalya/View/splashpage/splash_screen.dart';
import 'package:gangoli_shivalya/View/screens/LoginPage/login_page.dart';

import 'package:get/get.dart';

import '../mypagenames/mypage_names.dart';

class MyRoutesNames {
  static final List<GetPage> pages = [
    GetPage(
        name: MyPageNames.splash,
        page: () => const SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: MyPageNames.login,
        page: () => const LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: MyPageNames.home,
        page: () => const MyHomeScreen(),
        binding: HomeBinding()),
  ];
}
