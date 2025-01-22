import 'package:gangoli_shivalya/resources/mypagenames/mypage_names.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  ///
  ///
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAndToNamed(MyPageNames.first);
    });
    super.onInit();
  }
}
