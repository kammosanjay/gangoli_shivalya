import 'package:gangoli_shivalya/View/splashpage/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    /// splashController
    Get.lazyPut<SplashController>(() => SplashController());

    ///
  }
}
