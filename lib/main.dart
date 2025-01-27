import 'package:ecom_backend/config/themes.dart';
import 'package:ecom_backend/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deshi Mart',
      theme: darkTheme,
      home: const HomePage(),
    );
  }
}
