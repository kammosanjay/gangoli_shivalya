import 'package:flutter/material.dart';
import 'package:gangoli_shivalya/View/splashpage/splash_controller.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>();
    return Scaffold(
      
      body: Center(child: Lottie.asset("assets/lotti/lotti2025.json"))
    );
  }
}
