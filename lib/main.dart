import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gangoli_shivalya/firebase_options.dart';

import 'package:gangoli_shivalya/resources/mypagenames/mypage_names.dart';
import 'package:gangoli_shivalya/resources/myroutes/myroutes_pages.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: MyPageNames.splash,
      getPages: MyRoutesNames.pages,
    );
  }
}
