import 'package:gangoli_shivalya/View/screens/signupPage/signup_controller.dart';
import 'package:get/get.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(() => SignupController());
  }
}
