import 'package:gangoli_shivalya/View/screens/forgotpage/forgot_controller.dart';

import 'package:get/get.dart';

class ForgotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotController>(() => ForgotController());
  }
}
