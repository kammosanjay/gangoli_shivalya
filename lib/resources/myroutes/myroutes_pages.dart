
import 'package:gangoli_shivalya/View/screens/first_screen.dart';

import 'package:gangoli_shivalya/View/screens/sec_screen.dart';
import 'package:gangoli_shivalya/View/screens/third_screen.dart';
import 'package:gangoli_shivalya/View/splashpage/splash_binding.dart';
import 'package:gangoli_shivalya/View/splashpage/splash_screen.dart';


import 'package:get/get.dart';

import '../mypagenames/mypage_names.dart';

class MyRoutesNames {
  static final List<GetPage> pages = [
    GetPage(
        name: MyPageNames.splash,
        page: () =>const SplashScreen() ,
        binding:SplashBinding() ),
    GetPage(name: MyPageNames.first, page: () => const FirstScreen()),
    GetPage(name: MyPageNames.secondPage, page: () => const SecScreen()),
    GetPage(name: MyPageNames.thirdPage, page: () => const ThirdScreen()),
  ];
}
