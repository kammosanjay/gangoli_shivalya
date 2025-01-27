import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(context), body: Container());
  }
}

PreferredSizeWidget appBar(BuildContext context) {
  return AppBar(
   elevation: 0,
    title: const Text('Home Screen'),
   
  );
}
